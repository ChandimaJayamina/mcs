
/* recognize tokens for the calculator and print them out */

%{
# include "ch1-5.tab.h"
%}

%%
"+"	{ return ADD; }
"-"	{ return SUB; }
"*"	{ return MUL; }
"/"	{ return DIV; }
"|"     { return ABS; }
"("     { return OP; }
")"     { return CP; }
[0-9]+	{ yylval = atoi(yytext); return NUMBER; }
\n      { return EOL; }
"//".*  
[ \t]   { /* ignore white space */ }
%%
