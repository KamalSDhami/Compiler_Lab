%{
    #include <stdio.h>
%}

%%
[a-zA-Z]+              { printf("word: %s\n", yytext); }
[a-zA-Z][a-zA-Z0-9]*   { printf("identifier: %s\n", yytext); }
[0-9]+                 { printf("constant: %s\n", yytext); }
[+\-*\/=]              { printf("operator: %s\n", yytext); }
[ \t\n]+               { /* ignore whitespace */ }
.                      { printf("unknown: %s\n", yytext); }
%%

int main()
{
    printf("Enter the data:\n"); 
    yylex();//sum = a1+2
    return 0;
}

int yywrap()
{
    return 1;
}

