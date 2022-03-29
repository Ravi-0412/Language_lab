/* yacc program to accept strings of the form a^mb^n, m > n, m,n > 0. */                                                                
%{
#include<stdio.h>
#include"y.tab.h"
%}

%%
a           return A;
b           return B;
\n          return NL;
.           return yytext[0] ;          
%%

int yywrap()
{
    return 1;
}