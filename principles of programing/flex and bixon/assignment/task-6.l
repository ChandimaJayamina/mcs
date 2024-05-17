
/* regex capture */

%%
^0[1-9]-0[1-9]-[0-9]{4} {printf("%s", yytext);}
^[1-2][0-9]-0[1-9]-[0-9]{4} {printf("%s", yytext);}
^0[1-9]-1[0-2]-[0-9]{4} {printf("%s", yytext);}
^[1-2][0-9]-1[0-2]-[0-9]{4} {printf("%s", yytext);}
^30-0[1-9]-[0-9]{4} {printf("%s", yytext);}
^30-1[0-2]-[0-9]{4} {printf("%s", yytext);}
^31-0[13578]-[0-9]{4} {printf("%s", yytext);}
^31-1[02]-[0-9]{4} {printf("%s", yytext);}

. {}
%%

int main(void)
{
    yylex();
    return 0;
}
