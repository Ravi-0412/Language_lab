%{
#include<stdio.h>
FILE* yyin;
int vowels=0,lower=0,upper=0;
%}

vowels [aeiouAEIOU]
letter [A-Za-z]
%%
[aeiou] {vowels++; lower++;}
[AEIOU] {vowels++; upper++;}
[a-z]   {lower++;}
[A-Z]   {upper++;} 
. ;
%%

int main()
{
    yyin= fopen("external_upper.txt","r");
    yylex();
    printf("no of vowels: %d",vowels);
    printf("no of uppercase: %d",upper);
    printf("no of lowercase: %d",lower);
    return 0;
}
int yywrap()
{
    return 1;
}

