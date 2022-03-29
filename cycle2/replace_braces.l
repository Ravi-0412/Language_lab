%{
#include<stdio.h>
FILE *outp;
%}

%%
"{"  {fputs("begin",outp);}
"}"  {fputs("end",outp);}
"\n" {fputs("\n",outp);}
.    {fputs(yytext, outp);}
%%


int main()
{
    yyin= fopen("no_tokens.c", "r");
    outp= fopen("replace_braces.c", "w");
    yylex();
    return 0;
    
}
int yywrap()
{
    return 1;
}