%{
#include <stdio.h>
#include <string.h>
FILE *yyin;
char word[]="ravi";
int count=0;
%}

%%
[a-zA-Z]+ {if(strcmp(yytext,word)==0)
            count++;}
.         ;
%%


int main()
{   
    yyin=fopen("fre_words.txt","r");
    yylex();
    printf("%d\n",count);
    return 0;
}
int yywrap()
{
    return 1;
}

