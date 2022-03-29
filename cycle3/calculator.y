%{
#include<stdio.h>
int flag=0;
%}

%token NUMBER
%left '+''-'
%left '*''/''%'
%left '('')'

%%
grammer:E { printf("\nResult= %d\n",$$);
                 return 0;
                }
E:E'+'E  {$$= $1+$3;}
|E'-'E   {$$= $1-$3;}
|E'*'E   {$$= $1*$3;}
|E'/'E   {$$= $1/$3;}
|E'%'E   {$$= $1%$3;}
|'('E')' {$$= $2;}
|NUMBER  {$$= $1;}
;
%%

int main()
{
    printf("enter arithmetic expr\n");
    yyparse();
    if(flag==0)
    {printf("\narithmetic expression is valid");}
    return 0;
}
int yyerror()
{
    printf("arithmetic expression is invalid");
    flag=1;
    return 0;
}

