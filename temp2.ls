%{
    #include<stdio.h>
%}

%%
int|float|while|if|else|break {printf("keyword: %s", yytext)}
\'([^\\\n]|(\\.))\' {printf("literals: "yytext);}
\"([^\\\n]|(\\.))*\" {}
[_a-zA-Z][a-zA-Z0-9]*
([0-9]+|[0-9]+"."[0-9]+) {fprintf(yyout)}

%%

int main(){
    return 0;
}

int yywrap(){
    return 0;
}