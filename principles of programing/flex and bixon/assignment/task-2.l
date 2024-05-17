
/* regex capture */

%%
[+|-][0-9]+[.][0-9]+\n {printf("%s", yytext);}
. {}
%%

int main(void)
{
    yylex();
    return 0;
}
