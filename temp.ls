%{
    #include<stdio.h>
%}

%%
("int"|"float"|"while"|"if") {fprintf(yyout,"keyword: %s\n", yytext);}
\'([^\\\n]|(\\.))\' {fprintf(yyout,"Literals: %s\n", yytext);}
\"([^\\\"]|(\\.))*\" {fprintf(yyout,"String: %s\n", yytext);}
[_a-zA-Z][a-zA-Z0-9]* {fprintf(yyout,"identifier: %s\n", yytext);}
([0-9]+|[0-9]+"."[0-9]+) {fprintf(yyout,"constant: %s\n", yytext);}
. {}
%%

int main(int arg, char*argv[]){
    yyin = fopen("temp.txt", "r");
    yyout= fopen("temp_out.txt","w");
    yylex();
    fclose(yyin);
    return 0;
}
int yywrap(){
    return 1; 
}