/* a lex program for finding "aaa", total no of words, "single a, from a input text file  */

%{
# include<stdio.h>
FILE* yyin;
int c_aaa=0, c_a= 0, n_word=0;
%}

%%
[a]                 {c_a+= 1;}                             
(aaa)              {c_aaa+= 1, c_a+= 3;}    /* don't use [] bracket outside if you have to match
                                  set of char like more than one char, just use () for condition */

[' '\n]             {n_word+= 1;}
.                   ;
%%

int main()
{
    yyin= fopen("find_aaa.txt","r");
    yylex();
    printf("no of aaa: %d\n",c_aaa);
    printf("no of a: %d\n", c_a);
    printf("no of n_word: %d\n", n_word);
    return 0;
}
int yywrap()
{
    return 1;
}
