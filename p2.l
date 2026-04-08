%{
#include "p2.tab.h"
%}

%%
[0-9]+  {	return NUMB; }
"+"		{	return PLUS; }
"-"		{	return MIN; }
"*"		{	return MUL; }
"/"		{	return DIV; }
"("     {	return LP; }
")"     {	return RP; }
\n      {	return '\n'; }
.       { 	printf("Invalid char\n"); }
%%

int yywrap(){
	return 1;
}