type token =
  | ID of (string)
  | VAR of (string)
  | INT of (int)
  | LPAREN
  | RPAREN
  | LBRACKET
  | RBRACKET
  | COMMA
  | DOT
  | SEMI
  | COLON
  | CUT
  | PIPE
  | IMPLIES
  | QUERY
  | EQUALS
  | NOTEQUALS
  | NOT
  | LESS
  | GREATER
  | PLUS
  | MINUS
  | TIMES
  | DIVIDE
  | EOF
  | IS

open Parsing;;
let _ = parse_error;;
# 2 "parser.mly"
    open Interpreter;;
# 34 "parser.ml"
let yytransl_const = [|
  260 (* LPAREN *);
  261 (* RPAREN *);
  262 (* LBRACKET *);
  263 (* RBRACKET *);
  264 (* COMMA *);
  265 (* DOT *);
  266 (* SEMI *);
  267 (* COLON *);
  268 (* CUT *);
  269 (* PIPE *);
  270 (* IMPLIES *);
  271 (* QUERY *);
  272 (* EQUALS *);
  273 (* NOTEQUALS *);
  274 (* NOT *);
  275 (* LESS *);
  276 (* GREATER *);
  277 (* PLUS *);
  278 (* MINUS *);
  279 (* TIMES *);
  280 (* DIVIDE *);
    0 (* EOF *);
  281 (* IS *);
    0|]

let yytransl_block = [|
  257 (* ID *);
  258 (* VAR *);
  259 (* INT *);
    0|]

let yylhs = "\255\255\
\001\000\001\000\003\000\003\000\004\000\004\000\006\000\006\000\
\002\000\005\000\005\000\005\000\005\000\005\000\005\000\005\000\
\007\000\007\000\008\000\008\000\008\000\008\000\008\000\008\000\
\008\000\008\000\008\000\008\000\009\000\009\000\010\000\010\000\
\010\000\000\000\000\000"

let yylen = "\002\000\
\001\000\002\000\001\000\002\000\002\000\004\000\001\000\003\000\
\002\000\004\000\001\000\001\000\003\000\003\000\003\000\003\000\
\001\000\003\000\001\000\001\000\003\000\001\000\004\000\003\000\
\003\000\003\000\003\000\001\000\002\000\003\000\001\000\003\000\
\003\000\002\000\002\000"

let yydefred = "\000\000\
\000\000\000\000\000\000\000\000\019\000\020\000\000\000\000\000\
\012\000\001\000\034\000\000\000\000\000\000\000\000\000\028\000\
\035\000\000\000\000\000\000\000\000\000\000\000\029\000\000\000\
\000\000\002\000\004\000\005\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\009\000\000\000\
\000\000\000\000\021\000\000\000\000\000\030\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\026\000\027\000\008\000\
\000\000\000\000\000\000\032\000\000\000\006\000\018\000\023\000"

let yydgoto = "\003\000\
\011\000\017\000\012\000\013\000\018\000\019\000\040\000\015\000\
\016\000\025\000"

let yysindex = "\044\000\
\001\000\128\255\000\000\006\255\000\000\000\000\165\255\146\255\
\000\000\000\000\000\000\004\000\128\255\253\254\122\255\000\000\
\000\000\030\255\027\255\165\255\039\255\028\255\000\000\104\255\
\041\255\000\000\000\000\000\000\128\255\165\255\165\255\165\255\
\165\255\165\255\165\255\165\255\165\255\128\255\000\000\050\255\
\071\255\165\255\000\000\165\255\165\255\000\000\052\255\152\255\
\152\255\152\255\152\255\036\255\036\255\000\000\000\000\000\000\
\000\000\165\255\059\255\000\000\152\255\000\000\000\000\000\000"

let yyrindex = "\000\000\
\000\000\000\000\000\000\082\255\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\067\000\000\000\000\000\000\000\
\000\000\064\255\000\000\000\000\000\255\000\000\000\000\070\255\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\073\255\000\000\000\000\000\000\000\000\000\000\000\000\033\255\
\147\255\149\255\151\255\049\255\067\255\000\000\000\000\000\000\
\099\255\000\000\000\000\000\000\075\255\000\000\000\000\000\000"

let yygindex = "\000\000\
\000\000\000\000\072\000\000\000\255\255\006\000\232\255\251\255\
\000\000\053\000"

let yytablesize = 269
let yytable = "\014\000\
\010\000\022\000\024\000\026\000\022\000\028\000\022\000\022\000\
\022\000\020\000\029\000\014\000\022\000\022\000\041\000\022\000\
\022\000\059\000\022\000\022\000\022\000\022\000\022\000\022\000\
\048\000\049\000\050\000\051\000\052\000\053\000\054\000\055\000\
\043\000\063\000\047\000\039\000\041\000\038\000\024\000\061\000\
\013\000\013\000\042\000\056\000\001\000\002\000\013\000\046\000\
\034\000\035\000\036\000\037\000\041\000\024\000\057\000\024\000\
\024\000\024\000\036\000\037\000\062\000\024\000\024\000\064\000\
\024\000\024\000\003\000\024\000\024\000\024\000\024\000\025\000\
\007\000\025\000\025\000\025\000\031\000\017\000\058\000\025\000\
\025\000\033\000\025\000\025\000\027\000\025\000\025\000\025\000\
\025\000\011\000\011\000\034\000\035\000\036\000\037\000\011\000\
\060\000\022\000\022\000\000\000\022\000\022\000\022\000\022\000\
\022\000\022\000\010\000\010\000\000\000\000\000\000\000\044\000\
\010\000\000\000\023\000\023\000\045\000\023\000\023\000\023\000\
\023\000\023\000\023\000\000\000\034\000\035\000\036\000\037\000\
\004\000\005\000\006\000\007\000\000\000\008\000\000\000\000\000\
\000\000\030\000\031\000\009\000\032\000\033\000\034\000\035\000\
\036\000\037\000\021\000\005\000\006\000\007\000\000\000\008\000\
\023\000\000\000\014\000\014\000\015\000\015\000\016\000\016\000\
\014\000\000\000\015\000\000\000\016\000\021\000\005\000\006\000\
\007\000\000\000\008\000\000\000\034\000\035\000\036\000\037\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\000\
\000\000\004\000\005\000\006\000\007\000\000\000\008\000\000\000\
\000\000\000\000\000\000\000\000\009\000"

let yycheck = "\001\000\
\000\000\007\000\008\000\000\000\005\001\009\001\007\001\008\001\
\009\001\004\001\014\001\013\000\013\001\014\001\020\000\016\001\
\017\001\042\000\019\001\020\001\021\001\022\001\023\001\024\001\
\030\000\031\000\032\000\033\000\034\000\035\000\036\000\037\000\
\005\001\058\000\029\000\009\001\042\000\008\001\044\000\045\000\
\008\001\009\001\004\001\038\000\001\000\002\000\014\001\007\001\
\021\001\022\001\023\001\024\001\058\000\005\001\005\001\007\001\
\008\001\009\001\023\001\024\001\009\001\013\001\014\001\005\001\
\016\001\017\001\000\000\019\001\020\001\021\001\022\001\005\001\
\009\001\007\001\008\001\009\001\007\001\005\001\008\001\013\001\
\014\001\007\001\016\001\017\001\013\000\019\001\020\001\021\001\
\022\001\008\001\009\001\021\001\022\001\023\001\024\001\014\001\
\044\000\016\001\017\001\255\255\019\001\020\001\021\001\022\001\
\023\001\024\001\008\001\009\001\255\255\255\255\255\255\008\001\
\014\001\255\255\016\001\017\001\013\001\019\001\020\001\021\001\
\022\001\023\001\024\001\255\255\021\001\022\001\023\001\024\001\
\001\001\002\001\003\001\004\001\255\255\006\001\255\255\255\255\
\255\255\016\001\017\001\012\001\019\001\020\001\021\001\022\001\
\023\001\024\001\001\001\002\001\003\001\004\001\255\255\006\001\
\007\001\255\255\008\001\009\001\008\001\009\001\008\001\009\001\
\014\001\255\255\014\001\255\255\014\001\001\001\002\001\003\001\
\004\001\255\255\006\001\255\255\021\001\022\001\023\001\024\001\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\255\
\255\255\001\001\002\001\003\001\004\001\255\255\006\001\255\255\
\255\255\255\255\255\255\255\255\012\001"

let yynames_const = "\
  LPAREN\000\
  RPAREN\000\
  LBRACKET\000\
  RBRACKET\000\
  COMMA\000\
  DOT\000\
  SEMI\000\
  COLON\000\
  CUT\000\
  PIPE\000\
  IMPLIES\000\
  QUERY\000\
  EQUALS\000\
  NOTEQUALS\000\
  NOT\000\
  LESS\000\
  GREATER\000\
  PLUS\000\
  MINUS\000\
  TIMES\000\
  DIVIDE\000\
  EOF\000\
  IS\000\
  "

let yynames_block = "\
  ID\000\
  VAR\000\
  INT\000\
  "

let yyact = [|
  (fun _ -> failwith "parser")
; (fun __caml_parser_env ->
    Obj.repr(
# 33 "parser.mly"
            ([])
# 230 "parser.ml"
               : Interpreter.program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'clause_list) in
    Obj.repr(
# 34 "parser.mly"
                         (_1)
# 237 "parser.ml"
               : Interpreter.program))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'clause) in
    Obj.repr(
# 38 "parser.mly"
            ([_1])
# 244 "parser.ml"
               : 'clause_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'clause) in
    let _2 = (Parsing.peek_val __caml_parser_env 0 : 'clause_list) in
    Obj.repr(
# 39 "parser.mly"
                           (_1 :: _2)
# 252 "parser.ml"
               : 'clause_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'atom) in
    Obj.repr(
# 43 "parser.mly"
                  (FACT(HEAD(_1)))
# 259 "parser.ml"
               : 'clause))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : 'atom) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'atom_list) in
    Obj.repr(
# 44 "parser.mly"
                                  (RULE(HEAD(_1), BODY(_3)))
# 267 "parser.ml"
               : 'clause))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'atom) in
    Obj.repr(
# 48 "parser.mly"
             ([_1])
# 274 "parser.ml"
               : 'atom_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'atom) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'atom_list) in
    Obj.repr(
# 49 "parser.mly"
                              (_1 :: _3)
# 282 "parser.ml"
               : 'atom_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 1 : 'atom_list) in
    Obj.repr(
# 53 "parser.mly"
                  (GOAL(_1))
# 289 "parser.ml"
               : Interpreter.goal))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'term_list) in
    Obj.repr(
# 57 "parser.mly"
                                    (ATOM(_1, _3))
# 297 "parser.ml"
               : 'atom))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 58 "parser.mly"
                (ATOM(_1, []))
# 304 "parser.ml"
               : 'atom))
; (fun __caml_parser_env ->
    Obj.repr(
# 59 "parser.mly"
             (ATOM("!", []))
# 310 "parser.ml"
               : 'atom))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 60 "parser.mly"
                        (ATOM("=", [_1; _3]))
# 318 "parser.ml"
               : 'atom))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 61 "parser.mly"
                            (ATOM("\\=", [_1; _3]))
# 326 "parser.ml"
               : 'atom))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 62 "parser.mly"
                        (ATOM("<", [_1; _3]))
# 334 "parser.ml"
               : 'atom))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 63 "parser.mly"
                        (ATOM(">", [_1; _3]))
# 342 "parser.ml"
               : 'atom))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 67 "parser.mly"
           ([_1])
# 349 "parser.ml"
               : 'term_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term_list) in
    Obj.repr(
# 68 "parser.mly"
                              (_1 :: _3)
# 357 "parser.ml"
               : 'term_list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 72 "parser.mly"
            (VAR(_1))
# 364 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : int) in
    Obj.repr(
# 73 "parser.mly"
            (INT(_1))
# 371 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'term) in
    Obj.repr(
# 74 "parser.mly"
                            (_2)
# 378 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : string) in
    Obj.repr(
# 75 "parser.mly"
            (Node(_1, []))
# 385 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 3 : string) in
    let _3 = (Parsing.peek_val __caml_parser_env 1 : 'term_list) in
    Obj.repr(
# 76 "parser.mly"
                                    (Node(_1, _3))
# 393 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 77 "parser.mly"
                        (Node("+", [_1; _3]))
# 401 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 78 "parser.mly"
                        (Node("-", [_1; _3]))
# 409 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 79 "parser.mly"
                        (Node("*", [_1; _3]))
# 417 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 80 "parser.mly"
                        (Node("/", [_1; _3]))
# 425 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'list) in
    Obj.repr(
# 81 "parser.mly"
                 (_1)
# 432 "parser.ml"
               : 'term))
; (fun __caml_parser_env ->
    Obj.repr(
# 85 "parser.mly"
                       (Node("[]", []))
# 438 "parser.ml"
               : 'list))
; (fun __caml_parser_env ->
    let _2 = (Parsing.peek_val __caml_parser_env 1 : 'list_body) in
    Obj.repr(
# 86 "parser.mly"
                                   (_2)
# 445 "parser.ml"
               : 'list))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 90 "parser.mly"
            (Node(".", [_1; Node("[]", [])]))
# 452 "parser.ml"
               : 'list_body))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'list_body) in
    Obj.repr(
# 91 "parser.mly"
                            (Node(".", [_1; _3]))
# 460 "parser.ml"
               : 'list_body))
; (fun __caml_parser_env ->
    let _1 = (Parsing.peek_val __caml_parser_env 2 : 'term) in
    let _3 = (Parsing.peek_val __caml_parser_env 0 : 'term) in
    Obj.repr(
# 92 "parser.mly"
                       (Node("|", [_1; _3]))
# 468 "parser.ml"
               : 'list_body))
(* Entry program *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
(* Entry goal *)
; (fun __caml_parser_env -> raise (Parsing.YYexit (Parsing.peek_val __caml_parser_env 0)))
|]
let yytables =
  { Parsing.actions=yyact;
    Parsing.transl_const=yytransl_const;
    Parsing.transl_block=yytransl_block;
    Parsing.lhs=yylhs;
    Parsing.len=yylen;
    Parsing.defred=yydefred;
    Parsing.dgoto=yydgoto;
    Parsing.sindex=yysindex;
    Parsing.rindex=yyrindex;
    Parsing.gindex=yygindex;
    Parsing.tablesize=yytablesize;
    Parsing.table=yytable;
    Parsing.check=yycheck;
    Parsing.error_function=parse_error;
    Parsing.names_const=yynames_const;
    Parsing.names_block=yynames_block }
let program (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 1 lexfun lexbuf : Interpreter.program)
let goal (lexfun : Lexing.lexbuf -> token) (lexbuf : Lexing.lexbuf) =
   (Parsing.yyparse yytables 2 lexfun lexbuf : Interpreter.goal)
