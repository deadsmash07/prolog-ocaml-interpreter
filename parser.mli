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

val program :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Interpreter.program
val goal :
  (Lexing.lexbuf  -> token) -> Lexing.lexbuf -> Interpreter.goal
