%{
    #include<stdio.h>
    bool isValid=true;
%}

%%
[a-zA-Z_][a-zA-Z0-9_]*   { printf("Valid identifier: %s\n", yytext); }
.*                     {printf("Not valid");}  /* ignore other characters */
%%
int main(){
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}