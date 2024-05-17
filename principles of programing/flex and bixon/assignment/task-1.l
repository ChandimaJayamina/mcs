
/* regex capture */

%%
^[A-Z|*][a-zA-Z0-9_]+ {printf("%s", yytext);}
. {}
%%

int main(void)
{
    yylex();
    return 0;
}
