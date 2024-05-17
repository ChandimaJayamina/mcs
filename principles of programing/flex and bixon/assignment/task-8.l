
/* regex capture */

%%
^http[s]?:\/\/[a-z]+.com\n {printf("%s", yytext);}
^http[s]?:\/\/[a-z]+.com:[0-9]+\n {printf("%s", yytext);}
^http[s]?:\/\/[a-z]+.com:[0-9]+\/[A-Za-z0-9]+\n {printf("%s", yytext);}
. {}
%%

int main(void)
{
    yylex();
    return 0;
}
