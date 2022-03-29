%{
# include<stdio.h>
FILE* yyin;
int capital=0, small= 0, lines=0,n_char=0, n_aa,n_word=0;
%}

%%
[a-z]               {small+= 1,n_char+=1;}
[A-Z]               {capital+= 1,n_char+=1;}
[a-zA-Z0-9]         {n_char+=1;}
(aa)[a-zA-Z0-9]*(bb)  {n_aa+= 1;
                        for(int i=0;yytext[i]!='\0';i++){
                            n_char+=1;
                            if((int)yytext[i]>=65 &&(int)yytext[i]<=90 )
                                capital+=1;
                            else if((int)yytext[i]>=97 &&(int)yytext[i]<=122)
                                small+=1;
                            else
                                ;
                        }
                        }
[' '\t\n]             {n_word+= 1;}
.                   ;
%%

int main()
{
    yyin= fopen("capital_small.txt","r");
    yylex();
    printf("no of capital letters: %d\n",capital);
    printf("no of small letters: %d\n", small);
    printf("no of characters: %d\n", n_char);
    printf("no of words: %d\n", n_word);
    printf("no of words with aa_bb: %d\n", n_aa);
    return 0;
}
int yywrap()
{
    return 1;
}
