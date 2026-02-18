%{
    #include<stdio.h>
%}
%%
[0-9]*[13579]   {printf("odd: %s\n", yytext);}
[0-9]*[02468]   {printf("even: %s\n", yytext);}
%%

int main(int arg, char*argv[]){
    yylex();
    return 0;
}
int yywrap(){
    return 1; 
}