%{
#include<stdio.h>
int flag=0;
%}

%token  A B C D NL

%%
start:S NL {return 0;};
    S: E F; 
    E:A E B|A B;
    F:C F D|C D;
%%

int main()
{   printf("enter any string of a b c d: ");
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
