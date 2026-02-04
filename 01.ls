%{ 
    #include<stdio.h>
	int count = 0; 
%}
%%
.* { printf("hello world \n"); }
%%
int main(){
    printf("enter the data\n");
	yylex();
	printf("%d", count);
	return 0;
}
int yywrap(){
	return 1;
}