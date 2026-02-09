%{
    #include <stdio.h>
%}

%%
" " {fprintf(yyin , "%s", yyout);}
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