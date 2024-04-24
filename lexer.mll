{
  open Parser;;
  exception InvalidToken of char ;;
    
}
(*going to define lexer for prolog programming language, end goal is to make a interpretor*)
let variable = ['A'-'Z''_']['a'-'z''A'-'Z''0'-'9''_' ]*
let identifier = ['a'-'z''_']['a'-'z''A'-'Z''0'-'9''_''\'' ]*
let integer = '0'|['1'-'9']['0'-'9']*
let space = [' ' '\t' '\n']+

rule token = parse
    | space { token lexbuf }
    | variable as var { VAR (var) }
    | identifier as id { ID (id) }
    | integer as i { INT (int_of_string i) }
    | '(' { LPAREN }
    | ')' { RPAREN }
    | '.' { DOT }
    | ',' { COMMA }
    | ';' { SEMI }
    | ':' { COLON }
    | '!' { CUT}
    | "is" { IS }
    | '|' { PIPE}
    | ":-" { IMPLIES }
    | '?' { QUERY }
    | '[' { LBRACKET }
    | ']' { RBRACKET }
    | "=" { EQUALS }
    | "\\=" { NOTEQUALS }
    | "/+" { NOT }
    | "<" { LESS }
    | ">" { GREATER }
    | '+' { PLUS }
    | '-' { MINUS }
    | '*' { TIMES }
    | '/' { DIVIDE }
    | '%' { one_line_comment lexbuf }
    | "/*" { nested_comment 0 lexbuf }
    | eof { EOF }
    | _ as c { raise (InvalidToken c) }



and one_line_comment = parse
        eof                   {EOF}
    | '\n'                  {token lexbuf}
    |   _                   {one_line_comment lexbuf}

and nested_comment level = parse
        eof                  {failwith "Syntax error: Unexpected end of file within /* ... */ comment"}
    | "*/"                  {if level = 0 then token lexbuf else nested_comment (level-1) lexbuf}
    | "/*"                  {nested_comment (level+1) lexbuf}
    |  _                    {nested_comment level lexbuf}