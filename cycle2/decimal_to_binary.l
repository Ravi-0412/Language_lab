%{
int num,r,b=0,p=1;
%}

digit [0-9]

%%
{digit}+ {num=atoi(yytext);
          while(num>0)
          {
              r=num%2;
              b+=r*p;
              p*=10;
              num/=2;
          }
          printf("\n%d\n",b);
         }
%%

int main()
{
    yylex();
    return 0;
}