
/* regex capture */

%%
^[A-Za-z0-9_.-]+@[A-Za-z0-9-]+.com {printf("%s", yytext);}
. {}
%%

int main(void)
{
    yylex();
    return 0;
}
