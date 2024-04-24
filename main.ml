(* main.ml *)
open Lexer
open Parser
open Interpreter

(* Function to determine if a query is implicit or explicit based on its structure *)
let is_implicit query_atoms =
  List.for_all (function
    | ATOM (_, terms) -> List.for_all (function VAR _ -> false | _ -> true) terms
    | _ -> true
  ) query_atoms

(* Function to print the results *)
let print_results results implicit =
  match results with
  | [] -> print_endline "false."
  | _ ->
    if implicit then
      print_endline "true."
    else
      List.iter (fun subst ->
        if subst = [] then print_endline "true."
        else begin
          List.iter (fun (var, term) ->
            Printf.printf "%s = %s; " var (string_of_term term)
          ) subst;
          print_newline ();
        end
      ) results

let () =
  print_endline "Prolog Interpreter";
  try
    (* Replace "test1.pl" with actual input file or command line argument processing *)
    let input_program = "test4.pl" in
    let in_channel = open_in input_program in
    let lexbuf = Lexing.from_channel in_channel in
    let program = Parser.program Lexer.token lexbuf in
    close_in in_channel;

    while true do
      try
        print_string "?- "; flush stdout;
        let query = read_line () in
        if query = "halt." then exit 0;
        let query_lexbuf = Lexing.from_string query in
        let parsed_goal = Parser.goal Lexer.token query_lexbuf in
        let implicit = is_implicit (match parsed_goal with GOAL atoms -> atoms) in
        let results = resolve parsed_goal program in
        print_results results implicit
      with
      | Parsing.Parse_error -> print_endline "Error: Parse error in query."
      | InvalidGoal -> print_endline "Error: Invalid goal."
      | _ -> print_endline "Error: An unknown error occurred."
    done
  with Sys_error msg ->
    Printf.printf "File error: %s\n" msg;
    exit 1
