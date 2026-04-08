%{
#include<stdio.h>
%}
%s q1 q2 q3 q4
%%
<INITIAL>a {BEGIN q1;}
<INITIAL>b {BEGIN q2;}
<INITIAL>\n {printf("\nINVALID\n");BEGIN INITIAL;}

<q1>a {BEGIN q3;}
<q1>b {BEGIN q1;}
<q1>\n {printf("\nINVALID\n");BEGIN INITIAL;}

<q2>a {BEGIN q2;}
<q2>b {BEGIN q4;}
<q2>\n {printf("\nINVALID\n");BEGIN INITIAL;}

<q3>a {BEGIN q3;}
<q3>b {BEGIN q1;}
<q3>\n {printf("\nVALID\n");BEGIN INITIAL;}

<q4>a {BEGIN q2;}
<q4>b {BEGIN q4;}
<q4>\n {printf("\nVALID\n");BEGIN INITIAL;}
%%


int main(){
    yylex();
    return 0 ;
}

int yywrap(){

    return 1; 
}