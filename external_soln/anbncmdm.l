/* yacc program to accept strings of the form a^nb^nc^md^m */                                                                
%{
#include<stdio.h>
#include"y.tab.h"
%}

%%
a           return A;
b           return B;
c           return C;
d           return D;
\n          return NL;
.           return yytext[0] ;          
%%

int yywrap()
{
    return 1;
}