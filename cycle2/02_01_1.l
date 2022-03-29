%{
#include<stdio.h>
%}

%%
(aa)(a|b)*(bb) {printf("valid string");}
.*  {printf("invalid string");}

%%

yywrap() {return 1;}
int main()
{
    printf("enter a string of a and b");
    yylex();
    return 0;
    
}
