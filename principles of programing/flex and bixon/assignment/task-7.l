
/* regex capture */

%%
^<[a-z][a-zA-Z0-9 ]+> {printf("%s", yytext);}
(<!--([a-zA-Z0-9 ]*?)-->) {printf("%s", yytext);}
^<\/[a-z][a-zA-Z0-9 ]+> {printf("%s", yytext);}
. {}
%%

int main(void)
{
    yylex();
    return 0;
}
