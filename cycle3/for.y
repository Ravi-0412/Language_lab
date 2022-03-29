%{
#include<stdio.h>
#include<stdlib.h>
int flag=0;
%}

%token FOR ID NUM GE LE NE EQ OR AND 

%%
start:statement{return 0;}
statement:FOR'('E';'E1';'E')''{'BODY'}'
        ;
BODY:|statement
     |E';'
    ;
E: ID '=' E
    | E '+' E
    | E '-' E
    | E '*' E
    | E '/' E
    | E '<' E
    | E '>' E
    | E OR E
    | E AND E
    | E '+' '+'
    | E '-' '-'
    | ID
    | NUM
    ;

E1: E'<'E
    | E'>'E
    | E LE E
    | E GE E
    | E EQ E
    | E NE E
    ;     


%%

int main()
{
    printf("enter any for expression: ");
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