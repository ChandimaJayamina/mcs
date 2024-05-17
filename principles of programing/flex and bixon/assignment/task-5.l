
/* regex capture */

%%
^0[x|X][0-9A-Fa-f]+\n {printf("%s", yytext);}
. {}
%%

int main(void)
{
    yylex();
    return 0;
}
