%{
#include<stdio.h>
FILE *outp;
%}

%%
[(0-9)*(' ')*('\n')]+       {fputs(" ", outp);}
.                         {fputs(yytext, outp);}            
%%

int main()
{
    yyin= fopen("only_space_in.txt","r");
    outp= fopen("only_space_out.txt","w");
    yylex();
    return 0;
}
int yywrap()
{
    return 1;
}

