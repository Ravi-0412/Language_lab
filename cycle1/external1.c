// construct a DFA for a^nb^m such that m+n is odd
#include<stdio.h>
void main()
{
    char str[100],state='A';
    int i;
    printf("enter any string of {a,b}\n");
    scanf("%s",str);
    for(i=0;str[i]!='\0';i++)
    {
        switch(state)
        {
            case 'A':if(str[i]=='a') {state='C';}
                     else if(str[i]=='b') {state='B';}
                     break;
            case 'B':if(str[i]=='a') {state='D';}
                     else if(str[i]=='b') {state='A';}
                     break;
            case 'C':if(str[i]=='a') {state='A';}
                     else if(str[i]=='b') {state='D';}
                     break;
            case 'D':if(str[i]=='a') {state='B';}
                     else if(str[i]=='b') {state='C';}
                     break;

        }
    }
    if(state=='B'||state=='C')
    {
        printf("\nstring is accepted at it reached the final state at the end");
    }
    else
    {
        printf("\nstring is not accepted at it reached the state at the end which is not a final state");
    }
}


