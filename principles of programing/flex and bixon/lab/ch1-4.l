

%{
   enum yytokentype {
     NUMBER = 258,
     ADD = 259,
     SUB = 260,
     MUL = 261,
     DIV = 262,
     ABS = 263,
     EOL = 264 /* end of line */
   };

   int yylval;

%}


%%
"+"	{ return ADD; }
"-"	{ return SUB; }
"*"	{ return MUL; }
"/"	{ return DIV; }
"|"     { return ABS; }
[0-9]+	{ yylval = atoi(yytext); return NUMBER; } 
\n      { return EOL; }
[ \t]   { /* ignore white space */ }
.	{ printf("Mystery character %c\n", *yytext); }
%%
/* atoi(yytext) is likely used within a Flex|lexer to convert the matched text into an actual integer value.*/

int main()
{
  int tok;  // going through all the tokens
  while(tok = yylex())
  {
    printf("%d", tok);
    //print the enum or the rule of the token
    if(tok == NUMBER) 
        printf(" = %d\n", yylval);
          //print the number with enum
    else 
        printf("\n");
  }
  return 0;
}
