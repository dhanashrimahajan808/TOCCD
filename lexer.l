%{
#include<stdio.h>
%}

%%
[\t\n]+;
"int"|"float"|"char"|"if"|"else"|"while"|"for"|"return"|"void" {printf("%s --> keyword\n",yytext);}
[a-zA-Z_][a-zA-Z0-9_]* {printf("%s --> identifier\n",yytext);}
[0-9]+\.[0-9]+ {printf("%s --> float constant\n",yytext);}
[0-9]+ {printf("%s --> integer constant\n",yytext);}
\'[^'\n]\' {printf("%s --> character constant\n",yytext);}
"+"|"-"|"*"|"/"|"="|"%" {printf("%s --> operetor\n",yytext);}
"("|")"|";"|","|"{"|"}" {printf("%s --> special symbol\n",yytext);}
. {printf("%s --> unknown\n",yytext);}
%%
int main()
{
  printf("enter a statement:\n");
  yylex();
  return 0;
  
}

int yywrap()
{
 return 1;
}



