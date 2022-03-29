%{
#include<stdio.h>
	#include <stdlib.h>

	extern int yyerror(char *s);
	extern int yylex();

int count(const char *s)
{
    int a=0,b=0;
  for(int i=0;s[i]!='\0';i++)
  {
      if(s[i]=='a')
        {a++;}
      if(s[i]=='b')
        {b++;}
      ;
  }  
  if(a>b)
  {
      return 1;
  }
  return 0;
}
%}

%token  S NL
%union{char *s;}
;

%%
start:S NL {
     if(count(yylval.s))
     {
         return 1;
     }
     else{return 0;}
}
;
%%

int main(void)
{
    printf("enter any string of a and b: ");
    if (yyparse()) {
	printf("valid\n");
	} else {
		printf("Not valid\n");
	}
	return 0;
}

int yyerror(char *s)
{
    printf("invalid");
    exit(1);
}