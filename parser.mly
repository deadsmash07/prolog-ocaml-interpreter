%{
    open Interpreter;;
%}

// writing parser for my prolog languge lexer

%token <string> ID
%token <string> VAR
%token <int> INT
%token LPAREN RPAREN LBRACKET RBRACKET COMMA DOT SEMI COLON CUT PIPE IMPLIES QUERY EQUALS NOTEQUALS NOT LESS GREATER PLUS MINUS TIMES DIVIDE EOF IS

// DEFINING THE associativity and precedence of the operators

%right IMPLIES   // Right associativity for implication in rules
%nonassoc QUERY  // Non-associative for query start symbols
%nonassoc EQUALS NOTEQUALS  // Non-associative for equality and inequality
%nonassoc LESS GREATER      // Non-associative for less than and greater than comparisons
%left PIPE                  // Left associativity for disjunction
%left COMMA                 // Left associativity for conjunctions and list separators
%left PLUS MINUS            // Left associativity for addition and subtraction
%left TIMES DIVIDE          // Left associativity for multiplication and division
%nonassoc NOT               // Non-associative for the not operator
%nonassoc CUT               // Non-associative for the cut operator


%start program goal
%type <Interpreter.goal> goal
%type <Interpreter.program> program

%%

program:
    EOF     {[]}
    | clause_list EOF    {$1}
;

clause_list:
    clause  {[$1]}
    | clause clause_list   {$1 :: $2}
;

clause:
      atom DOT    {FACT(HEAD($1))}
    | atom IMPLIES atom_list DOT  {RULE(HEAD($1), BODY($3))}
;

atom_list:
    atom     {[$1]}
    | atom COMMA atom_list    {$1 :: $3}
;

goal:
    atom_list DOT {GOAL($1)}
;

atom:
    | ID LPAREN term_list RPAREN    {ATOM($1, $3)}
    | ID        {ATOM($1, [])}
    | CUT    {ATOM("!", [])}
    | term EQUALS term  {ATOM("=", [$1; $3])}
    | term NOTEQUALS term   {ATOM("\\=", [$1; $3])}
    | term LESS term    {ATOM("<", [$1; $3])}
    | term GREATER term {ATOM(">", [$1; $3])}


term_list:
    term   {[$1]}
    | term COMMA term_list    {$1 :: $3}
;

term:
    VAR     {VAR($1)}
    | INT   {INT($1)}
    | LPAREN term RPAREN    {$2}
    | ID    {Node($1, [])}
    | ID LPAREN term_list RPAREN    {Node($1, $3)}
    | term PLUS term    {Node("+", [$1; $3])}
    | term MINUS term   {Node("-", [$1; $3])}
    | term TIMES term   {Node("*", [$1; $3])}
    | term DIVIDE term  {Node("/", [$1; $3])}
    | list       {$1}
;

list:
    LBRACKET RBRACKET  {Node("[]", [])}
    | LBRACKET list_body RBRACKET  {$2}
;

list_body:
    term    {Node(".", [$1; Node("[]", [])])}
    | term COMMA list_body  {Node(".", [$1; $3])}
    | term PIPE term   {Node("|", [$1; $3])}
;
    