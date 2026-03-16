/*Crete DFA that accepts  Even lenght of string over input E = {a,b} eg: E, aa, ab, bb, abba, aaaa*/
%{
    #include<stdio.h>
%}

%s A DEAD
%%
<INITIAL>a BEGIN A;
<INITIAL>b BEGIN A;

<A>a BEGIN INITIAL;
<A>b BEGIN INITIAL;

<INITIAL>[^a|b|\n] BEGIN DEAD;
<A>[^a|b|\n] BEGIN DEAD;

<DEAD>[.] BEGIN DEAD;
<INITIAL>\n {printf("Accepted\n");};
%%

int main(){
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}