
/* regex capture */

%%
^[\/][\/][ A-Za-z0-9]+ {printf("%s", yytext);}
^[\/][\*][A-Za-z0-9 ]+[\*][\/] {printf("%s", yytext);}
. {}
%%

int main(void)
{
    yylex();
    return 0;
}
