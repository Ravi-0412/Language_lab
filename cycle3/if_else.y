%{
#include<stdio.h>
#include<stdlib.h>
int flag=0;
%}

%token IF ELSE ID NUM GE LE NE EQ OR AND

%%
start:statement  {return 0;}
statement:IF'('condition')''{'ST';''}'ELSE'{'ST';''}'
        |IF'('condition')''{'ST';''}'
        ;
ST:statement
  |E
  ;
E:    ID'='E
      |E'+'E
      |E'-'E
      |E'*'E
      |E'/'E
      |E'<'E
      |E'>'E
      |E LE E
      |E GE E
      |E EQ E
      |E NE E
      |E OR E
      |E AND E
      |ID
      |NUM
      ;
condition:E'<'E
        |E'>'E
        |E LE E
        |E GE E
        |E EQ E
        |E NE E
        |E OR E
        |E AND E
        |ID
        |NUM
        ;
%%

int main()
{
    printf("enter any if-else expression: ");
    yyparse();
    if(flag==0)
    {
        printf("valid");
    }
    return 0;
}

int yyerror()
{
        printf("invalid");
        flag=1;
        return 0;
}
