// : Write a C program to implement a DFA for the regular expression 1*2*3* using transition table
#include<stdio.h>
void main()
{
   char str[100], state='A';
   int i;
   printf("Enter any string of {1,2,3}: \n");
   scanf("%s",str);
   for(i=0;str[i]!='\0';i++)
   {
	switch(state)
	{
	  case 'A':if(str[i]=='1') state='A';
 	           else if(str[i]=='2') state='B';
               else if(str[i]=='3') state='C';
	           break;

      case 'B':if(str[i]=='1') state='D';
 	           else if(str[i]=='2') state='B';
               else if(str[i]=='3') state='C';
	           break;

      case 'C':if(str[i]=='1') state='D';
 	           else if(str[i]=='2') state='D';
               else if(str[i]=='3') state='C';
	           break;

      case 'D':if(str[i]=='1') state='D';
 	           else if(str[i]=='2') state='D';
               else if(str[i]=='3') state='D';
	           break;
    }
   }

   if(state=='A'|| state=='B'|| state=='C')
   {
       printf("\n String is accepted as it reached final state %c at the end\n",state);
   }
   else
   {
       printf("\n String is not accepted as it reached state %c  which is not a final state\n",state);
   }
}

