%{
#include<stdio.h>
int nchar=0, nwords=0, nlines=0;
%}

%%
[' '\t]*[\n][' '\t]*  {nlines++; nwords++;}
[' '\t' ']+            {nwords++;}
[a-zA-Z0-9]             {nchar++;}
. ;
%%
 
int main()
{
    yyin= fopen("no_characters.txt","r");
    yylex();
    printf("no of characters:%d\n", nchar);
    printf("no of words: %d\n", nwords);
    printf("no of lines: %d\n", nlines);
}
int yywrap()
{
    return 1;
}
