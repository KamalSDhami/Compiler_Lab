
%{
    #include<stdio.h>
%}
%s q1 q2 q3 q4
%%
<INITIAL>a {BEGIN q1;}
<INITIAL>b {BEGIN INITIAL;}
<INITIAL>\n {printf("\nINVALID initial\n"); BEGIN INITIAL;}

<q1>a {BEGIN q1;}
<q1>b {BEGIN q2;}
<q1>\n {printf("\nINVALID q1\n"); BEGIN INITIAL;}

<q2>a {BEGIN q1;}
<q2>b {BEGIN q3;}
<q2>\n {printf("\nINVALID q2\n"); BEGIN INITIAL;}

<q3>a {BEGIN q4;}
<q3>b {BEGIN INITIAL;}
<q3>\n {printf("\nINVALID q3\n"); BEGIN INITIAL;}

<q4>[ab] {BEGIN q4;}
<q4>\n {printf("\nVALID\n"); BEGIN INITIAL;}

%%

int main(){
    yylex();
    return 0;
}
int yywrap(){
    return 1;
}