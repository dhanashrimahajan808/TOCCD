%{
#include<stdio.h>
#include<stdlib.h>

int yylex(void);
int yyerror(char *s);
%}

%token NUMBER

%left '+''-'
%left '*''/'

%%

input:
    expr '\n'  { printf("result = %d\n", $1); }
    ;
    
expr:
     expr '+' expr  { $$=$1+$3; }
     | expr'-'expr  { $$=$1-$3; }
     | expr'*'expr  { $$=$1*$3; }
     | expr'/'expr  { $$=$1/$3; }
     | NUMBER         { $$=$1; }
     
%%

int main()
{
 printf("Enter Arithmetic Expressions:\n");
 yyparse();
 return 0;
}

int yyerror(char *s){
	printf("Invalid Expression\n");
	return 0;
}
