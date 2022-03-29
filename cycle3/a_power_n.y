%{
#include<stdio.h>
int flag=0;
%}

%token A  NL

%%
start:S NL {return 0;}
S:A S|
  ;
%%

int main()
{
    printf("enter any string of a: ");
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
