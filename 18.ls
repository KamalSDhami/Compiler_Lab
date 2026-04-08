%{
    #include<stdio.h>
%}
%s INT FLOAT ID DEAD A
%%
<INITIAL>[0-9] BEGIN INT;
<INITIAL>[a-zA-Z_] BEGIN ID;
<INITIAL>. BEGIN DEAD;

<INT>[0-9] ;
<INT>"." BEGIN A;
<INT>\n {printf("Integer\n");BEGIN INITIAL;}
<INT>. BEGIN DEAD;

<A>[0-9] BEGIN FLOAT;
<A>. BEGIN DEAD;
<FLOAT>[0-9];
<FLOAT>\n {printf("Float\n"); BEGIN INITIAL;}
<FLOAT>. BEGIN DEAD;

<ID>[A-Za-z0-9_] ;
<ID>\n {printf("Identifier\n"); BEGIN INITIAL;}
<ID>. BEGIN DEAD;

<DEAD>[^\n];
<DEAD>\n {printf("Invalid case\n"); BEGIN INITIAL;}
%%

int main(){
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}