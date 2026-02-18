%{
    #include<stdio.h>
%}

%%
"<"[^>]+">" {fprintf(yyout, "%s\n", yytext);}
. {}
%%

int main(int arg, char*argv[]){
    FILE * in =fopen(argv[1],"r");
    yyout = fopen(argv[2],"w");
    
    yyin=in;
    yylex();

    fclose(in);
    fclose(yyout);

    return 0;
}
int yywrap(){
    return 0;
}