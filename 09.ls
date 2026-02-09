%{
#include <stdio.h>
%}

%%
[ \t]*"//".*  { /* ignore single-line comments */ }
.|\n          { fprintf(yyout, "%s", yytext); }
%%

int main() {
    yyin  = fopen("Out.c", "r");
    yyout = fopen("output.c", "w");

    if (!yyin || !yyout) {
        printf("File error\n");
        return 1;
    }

    yylex();

    fclose(yyin);
    fclose(yyout);
    return 0;
}

int yywrap() {
    return 1;
}
