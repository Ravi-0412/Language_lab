%{
#include<stdio.h>
#include"y.tab.h"
%}

%%
a return A;
\n return NL;
.   return yytext[0];
%%
int yywrap()
{
    return 1;
}
