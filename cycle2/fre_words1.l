%{
#include <stdio.h>
#include <string.h>
FILE *yyin;
int count=0;
%}

%%
[a-zA-Z]+ {if(strcmp(yytext,word==0) {count++;} }
.         ;
%%


int main()
{   char word[20];
    yyin=fopen("fre_words.txt","r");
    printf("enter the word: ");
    scanf("%s",word);
    yylex();
    printf("frequency: %d\n",count);
    return 0;
}
int yywrap()
{
    return 1;
}
