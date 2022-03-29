%{
#include<stdio.h>
FILE* yyin;
int word=0;
%}

vowels [aeiouAEIOU]
letter [A-Za-z]
%%
{letter}*{vowels}+{letter}*  {word++;} 
. ;
%%

int main()
{
    yyin= fopen("external_upper.txt","r");
    yylex();
    printf("no of vowels: %d",word);
    return 0;
}
int yywrap()
{
    return 1;
}