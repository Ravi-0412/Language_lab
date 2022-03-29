%{
#include<stdio.h>
#include<string.h>
int stat=0,id=0,asop=0,relop=0,key=0,int1=0;
FILE* yyin;
%}
c_stat ";"
identifier [a-zA-Z_][a-zA-Z0-9_]*
assignment "="
relational ">"|"!="|"<"|"=="|">="|"<=" 
keyword  "void"|"int"|"float"|"double"|"main"|"if"|"else"|"printf"|"return"
integer [0-9]+

%%
{c_stat} {stat++;}
{assignment} {asop++;}
{relational} {relop++;}
{keyword} {key++;}
{integer} {int1++;}
{identifier} {id++;}
. ;
%%

int main()
{
    yyin= fopen("no_tokens.c","r");
    yylex();
    printf("no of statements: %d\n", stat);
    printf("no of identifier: %d\n", id);
    printf("no of assign operator: %d\n", asop);
    printf("no of relational operator: %d\n", relop);
    printf("no of keyword: %d\n", key);
    printf("no of integer: %d\n", int1);
    return 0;

}
int yywrap()
{
    return 1;
}
