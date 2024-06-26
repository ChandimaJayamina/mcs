
/* Implement parser using Bison rules/gammar */

%{
   #include <stdio.h>
   void yyerror(const char* msg) {
      fprintf(stderr, "%s\n", msg);
   }
   int yylex();
%}

/* declare tokens */
%token NUMBER
%token ADD SUB MUL DIV ABS
%token OP CP
%token EOL


%%

calclist: /* nothing */
 | calclist exp EOL { printf("= %d\n> ", $2); }
 ;

exp: factor
 | exp ADD exp { $$ = $1 + $3; }
 | exp SUB factor { $$ = $1 - $3; }
 | exp ABS factor { $$ = $1 | $3; }
 ;

factor: term
 | factor MUL term { $$ = $1 * $3; }
 | factor DIV term { $$ = $1 / $3; }
 ;

term: NUMBER
 | ABS term { $$ = $2 >= 0? $2 : - $2; }
 | OP exp CP { $$ = $2; }
 ;
%%

int main()
{
  printf("> "); 
  yyparse();
  return 0;
}
