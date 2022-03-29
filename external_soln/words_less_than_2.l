%{
# include<stdio.h>
#include<string.h>
#include<stdlib.h>
FILE* yyin;
int less_5= 0, n_word=0,less_2=0,w_aaa=0;
%}

%%

[' '\n][a-zA-Z]*(aaa)[a-zA-Z]*   {w_aaa+=1;}
. ;
%%

int main()
{
    yyin= fopen("words_less_than_2.txt","r");
    yylex();
    printf("\n no of words : %d\n",w_aaa);

    return 0;
}
int yywrap()
{
    return 1;
}
