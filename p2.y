%{
#include<stdio.h>
void yyerror(const char *s);	
int yylex();
%}

%token NUMB
%token PLUS MIN MUL DIV LP RP

%%
expr:
	expr '\n' {	printf("Valid Expression\n"); }
	;

expr:
	expr PLUS expr
	| expr MIN expr
	| expr MUL expr
	| expr DIV expr
	| LP expr RP
	| NUMB
	;
%%

void yyerror(const char* s){
	printf("Invalid Expression\n");
}

int main(){
	yyparse();

	return 0;
}