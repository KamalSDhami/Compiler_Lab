%{
    #include<stdio.h>
    int ch = 0, ws=0,words=0;
%}
%%
[ \t\n] {ch++; ws++;}
[^ \t\n]+ {words++; ch+=yyleng;}
%%

int main(){
    yyin = fopen("f1.txt","r");
    yylex();
    fclose(yyin);

    printf("ch: %d, ws: %d, words: %d\n", ch,ws,words);
    return 0;
}
int yywrap(){

    return 1;
}





