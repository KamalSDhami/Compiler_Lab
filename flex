%{ 
    #include<stdio.h>
	int count = 0; 
%}
%%
%%
int main(){
	yylex();
	printf("%d", count);
	return 1;
}
int yywrap(){
	return 1;
}