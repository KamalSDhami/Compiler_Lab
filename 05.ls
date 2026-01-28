/*find weither the entered number is intiger or float
*/

%{
    #include<stdio.h>
%}
%%
(0|[1-9][0-9]*)* {printf("It's an Integer\n"); }
[0-9]+\.[0-9]+ { printf("It's a Float by rule 1\n" );} 
[0-9]*\.[0-9]+ { printf("It's a Float by rule 2\n" );} 

.* {printf("Not a number\n");}
%%

int main(){
    yylex();
    return 0;

}

int yywrap(){
    return 1;
}