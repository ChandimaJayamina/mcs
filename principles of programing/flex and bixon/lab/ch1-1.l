/* create file with ch1-1 */

%{
int chars = 0;
int words = 0;
int lines = 0;
%}


%%

[^ \t\n\r\f\v]+ { words++; chars += strlen(yytext); } //without tab,new line,old line ending,page breaks,verticaltab
\n		{ chars++; lines++; }
.		{ chars++; }

%%

int main(void)
{
    yylex();     //perform lexical analyser on the commands
    printf("Hello Eagle\n");
    printf("Lines:%3d\nWords:%3d\nChars:%3d\n", lines, words, chars);
    return 0;
}
