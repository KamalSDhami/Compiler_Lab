%{
    #include "exp.tab.hc"
    #include<stdlib.h>
%}
%%
[0-9]+ {yylval = atoi(yytext); return NUM;}
"+" {return PLUS;}
"-" {return MINUS;}
"*" {return MUL;}
"/" {return DIV;}

"(" {return LP;}
")" {return RP;}
[ \t] ; 
\n {return '\n';}
%%

int yywrap(){
    return 1;
}