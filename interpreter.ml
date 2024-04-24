(* Interpreter.ml *)
(* Definitions as provided *)
type term = VAR of string | INT of int | Node of string * term list
type atom = ATOM of string * term list
type head = HEAD of atom
type body = BODY of atom list
type clause = FACT of head | RULE of head * body
type program = clause list
type goal = GOAL of atom list
type substitution = (string * term) list

exception UnificationFailure
exception InvalidGoal
exception InvalidProgram


(* Helper functions *)
let rec string_of_term term =
  match term with
  | VAR v -> v
  | INT i -> string_of_int i
  | Node (f, args) -> 
    f ^ "(" ^ String.concat ", " (List.map string_of_term args) ^ ")"

(* Unification function *)
let rec unify t1 t2 subst =
  match (t1, t2) with
  | (VAR x, VAR y) when x = y -> Some subst
  | (VAR x, _) ->
      if List.exists (fun (var, _) -> var = x) subst then None
      else Some ((x, t2) :: subst)
  | (_, VAR y) -> unify t2 t1 subst
  | (INT x, INT y) when x = y -> Some subst
  | (Node (f1, args1), Node (f2, args2)) when f1 = f2 ->
      List.fold_left2 (fun acc a1 a2 -> match acc with
        | Some s -> unify a1 a2 s
        | None -> None) (Some subst) args1 args2
  | _ -> None

(* Apply substitution to term *)
let rec apply_substitution term subst =
  match term with
  | VAR var -> (match List.assoc_opt var subst with
                | Some t -> t
                | None -> term)
  | INT _ -> term
  | Node (f, args) -> Node (f, List.map (fun arg -> apply_substitution arg subst) args)

(* Resolve goals against the program *)
let rec resolve goal program =
  match goal with
  | GOAL atoms -> solve_atoms atoms program [] []

and solve_atoms atoms program subst results =
  match atoms with
  | [] -> [subst]
  | ATOM (pred, terms) :: rest ->
    let applicable_clauses = List.filter (fun clause ->
      match clause with
      | FACT (HEAD (ATOM (name, _))) when name = pred -> true
      | RULE (HEAD (ATOM (name, _)), _) when name = pred -> true
      | _ -> false) program
    in
    List.fold_left (fun acc clause ->
      match clause with
      | FACT (HEAD (ATOM (_, params))) ->
        begin
          match unify_lists params terms subst with
          | Some new_subst -> solve_atoms rest program new_subst (new_subst :: results)
          | None -> acc
        end
      | RULE (HEAD (ATOM (_, params)), BODY body_atoms) ->
        begin
          match unify_lists params terms subst with
          | Some new_subst ->
            let new_goals = List.map (fun (ATOM (name, t)) -> ATOM (name, List.map (fun term -> apply_substitution term new_subst) t)) body_atoms in
            solve_atoms (new_goals @ rest) program new_subst (new_subst :: results)
          | None -> acc
        end) results applicable_clauses

and unify_lists params terms subst =
  List.fold_left2 (fun acc p t -> match acc with
    | Some s -> unify p t s
    | None -> None) (Some subst) params terms
