%{
    #include<stdio.h>
    int lines = 0, spaces = 0, tabs = 0, other = 0;
%}
%%
\n {lines++;}
" " {spaces ++;} /* or [ ] */
\t {tabs++;}
. {other++;} /*any cherecter except new line */ 
%%

int main(){
    yylex();


    printf("lines: %d\t", lines);
    printf("spaces %d\n", spaces );
    printf("tabs %d\t", tabs);
    printf("other : %d\n", other);
    return 0;
    
}
int yywrap(){
    return 1;
}