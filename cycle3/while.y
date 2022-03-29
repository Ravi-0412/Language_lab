%{
#include<stdio.h>
#include<stdlib.h>
int flag=0;
%}

%token WHILE ID NUM GE LE NE EQ OR AND 

%%
start:statement{return 0;}
statement:WHILE'('E1')''{'BODY'}'
        ;
BODY:|statement
    |E';'
    ;

E:  E2'=' E2
    | E2 '+' E2
    | E2 '-' E2
    | E2 '*' E2
    | E2 '/' E2
    | E2 '<' E2
    | E2 '>' E2
    | E2 OR E2
    | E2 AND E2
    | E2 '+' '+'
    | E2 '-' '-'
    ;
E2:NUM
  |ID
  ;

E1: E2'<'E2
    | E2'>'E2
    | E2 LE E2
    | E2 GE E2
    | E2 EQ E2
    | E2 NE E2
    ; 

%%

int main()
{
    printf("enter any while expression: ");
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