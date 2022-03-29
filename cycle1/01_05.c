// DFA where '00' is immediately followed by 1
#include<stdio.h>
void main()
{
   char str[100], state='A';
   int i;
   printf("Enter any string of {0,1}: \n");
   scanf("%s",str);
   for(i=0;str[i]!='\0';i++)
   {
	switch(state)
	{
	  case 'A':if(str[i]=='0') state='B';
 	           else if(str[i]=='1') state='A';
	  break;

      case 'B': if(str[i]=='0') state='C';
 	           else if(str[i]=='1') state='A';
	  break;

      case 'C':if(str[i]=='0') state='D';
 	           else if(str[i]=='1') state='A';
	  break;

      case 'D':if(str[i]=='0') state='D';
 	           else if(str[i]=='1') state='D';
	  break;
    }
   }

   if(state=='A'|| state=='B')
   {
       printf("\n String is accepted as it reached final state %c at the end\n",state);
   }
   else
   {
       printf("\n String is not accepted as it reached state %c  which is not a final state\n",state);
   }
}
