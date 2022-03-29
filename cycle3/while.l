%{
#include<stdio.h>
#include"y.tab.h"
%}

%%
while      return WHILE;
[A-Za-z_][A-Za-z0-9_]*      return ID;
[0-9]+   return NUM;
"<="     return LE;
">="     return GE;
"=="     return EQ;
"!="     return NE;
"||"     return OR;
"&&"     return AND;
"\n"     return 0;
.        return yytext[0];
%%

int yywrap()
{
    return 1;
}