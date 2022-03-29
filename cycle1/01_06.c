// Dfa implementation of strings made of {a,b,c} having ‘abc’ as a substring

#include<stdio.h>
void main()
{
   char str[100], state='A';
   int i;
   printf("Enter any string of {a,b,c}: \n");
   scanf("%s",str);
   for(i=0;str[i]!='\0';i++)
   {
	switch(state)
	{
	  case 'A':if(str[i]=='a') state='B';
 	           else if(str[i]=='b') state='A';
               else if(str[i]=='c') state='A';
	           break;

      case 'B':if(str[i]=='a') state='B';
 	           else if(str[i]=='b') state='C';
               else if(str[i]=='c') state='A';
	           break;

      case 'C':if(str[i]=='a') state='B';
 	           else if(str[i]=='b') state='A';
               else if(str[i]=='c') state='D';
	           break;

      case 'D':if(str[i]=='a') state='D';
 	           else if(str[i]=='b') state='D';
               else if(str[i]=='c') state='D';
	           break;
    }
   }

   if(state=='D')
   {
       printf("\nString is accepted as it reached final state %c at the end\n",state);
   }
   else
   {
       printf("\nString is not accepted as it reached state %c  which is not a final state\n",state);
   }
}

