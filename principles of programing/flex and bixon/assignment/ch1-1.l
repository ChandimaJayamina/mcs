
/* ch1-1.l just like unix wc */

%{
int chars = 0;
int words = 0;
int lines = 0;
%}

%%

[^ \t\n\r\f\v]+ { words++; chars += strlen(yytext); }
\n		{ chars++; lines++; }
.		{ chars++; }

%%

int main(void)
{
    yylex();
    printf("Lines:%3d\nWords:%3d\nChars:%3d\n", lines, words, chars);
    return 0;
}
