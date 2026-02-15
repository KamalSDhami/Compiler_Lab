
%{
    #include <stdio.h>
%}

%%
[ \t\r]+      { fprintf(yyout, " "); }   /* Replace any whitespace sequence with single space */

.               { fprintf(yyout, "%s", yytext); }  /* Copy all other characters as-is */
%%

int main(){
    yyin= fopen("file.txt","r");
    yyout=fopen("open.txt","w");
    yylex();
    fclose(yyin);
    fclose(yyout);
    return 0;
}
int yywrap(){
    return 1;
}