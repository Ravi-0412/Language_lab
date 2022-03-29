%{
#include<stdio.h>
int flag=0;
%}

%token  A B NL

%%
start:S NL  {return 0;} ;
    S:A S|A E
    E:A E B|A B
    ;
%%

int main()
{
    printf("enter any string of a and b: ");
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
