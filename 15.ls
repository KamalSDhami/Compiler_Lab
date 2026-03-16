/*Crete DFA that accepts  Even lenght of string over input E = {a,b} eg: E, aa, ab, bb, abba, aaaa*/
%{
    #include<stdio.h>
%}

%s A DEAD
%%
<INITIAL>[ab] BEGIN A;
<INITIAL>\n {printf("Accepted\n");BEGIN INITIAL;}
<INITIAL>[^ab\n] BEGIN DEAD;

<A>[ab] BEGIN INITIAL;
<A>\n   { printf("Rejected\n");BEGIN INITIAL; }
<A>[^ab\n] BEGIN DEAD;;

<DEAD>. {printf("Invalid");BEGIN INITIAL;};
%%

int main(){
    yylex();
    return 0;
}

int yywrap(){
    return 1;
}