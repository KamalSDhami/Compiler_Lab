%{
    #include<stdio.h>
%}
%%
[a-zA-Z0-9_.]+@[a-zA-Z0-9]+\.[a-zA-Z]{2,}$   {printf("email: %s\n", yytext);}
%%

int main(int arg, char*argv[]){
    yylex();
    return 0;
}
int yywrap(){
    return 1; 
}