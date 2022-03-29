%{
#include<stdio.h>
int count=0,number,sum=0;
%}

%%
[0-9]+  {number= atoi(yytext);
        for(int i=1;i<=(number/2);i++)
        {
            if(number%i==0)
            {
                sum+= i;
            }
        }
        if(sum==number)
        {
            printf("number is a perfect number");
        }
        else{printf("number is not a perfect number");}
}
%%

int main()
{ 
   /* int number; 
    printf("enter the number: ");
    scanf("%d",&number);   */
    
    yylex();
    return 0;

}
int yywrap()
{
    return 1;
}