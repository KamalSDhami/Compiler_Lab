%{
    #include<stdio.h>
%}
%s A B D
%%
<INITIAL>a {BEGIN A;}
<INITIAL>\n {BEGIN INITIAL;}
<INITIAL>. {BEGIN D;};

<A>a BEGIN A;
<A>b BEGIN B;
<A>. BEGIN D;
<A>\n {printf("INVALID\n");BEGIN INITIAL;}


<B>b BEGIN B;
<B>a BEGIN A;
<B>. BEGIN D;
<B>\n {printf("VALID\n"); BEGIN INITIAL;}

<D>. BEGIN D;
<D>\n {printf("INVALID\n"); BEGIN INITIAL;}
%%

int main(){
    yylex();
    return 0 ;
}

int yywrap(){

    return 1; 
}