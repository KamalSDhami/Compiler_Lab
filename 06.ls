%{
    #include<stdio.h>
%}
IDR [_a-zA-Z][_a-zA-Z0-9]*

%%  
[,;(){}] {printf("Seprater: %s",yytext);}
[+\-*/%] {printf("Operator: %s", yytext);}
(int|float|double|if|else) {printf("keyword: %s", yytext);}
{IDR} {printf("Identifiers: %s\n", yytext);}
%%

int main(){
    yylex();
    return 0;
}

int yywrap(){
    return 0;
}