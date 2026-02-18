%{
    #include<stdio.h>
%}

%%
("int"|"float"|"while"|"if") {printf("keyword: %s\n", yytext);}
[_a-zA-Z][a-zA-z0-9]* {printf("identifier: %s\n", yytext);}
([0-9]+|[0-9]+"."[0-9]+) {printf("constant: %s\n", yytext);}
\'([^\\ \n]|(\\.))\' {printf("Literals: %s\n", yytext);}
\"([^\\ \"]|(\\.))*\" {printf("String: %s\n", yytext);}
%%

int main(int arg, char*argv[]){
    yylex();
    return 0;
}
int yywrap(){
    return 1; 
}