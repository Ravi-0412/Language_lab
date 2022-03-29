// Write a C program to implement a DFA to check whether an input string is a valid identifier in c
#include<stdio.h>
void main()
{
   char str[100], state='A';
   int i;
   printf("Enter any string: \n");
   scanf("%s",str);
   for(i=0;str[i]!='\0';i++)
   {
     int str_int;
     str_int = (int)str[i];
     if (!((str_int == 95) || ((str_int >= 48) && (str_int <= 57)) || ((str_int >= 65) && (str_int<=90)) || ((str_int >= 97) && (str_int <= 122))))  //for checking extra symbol
     { state ='D';
        break;
     }
	switch(state)
	{
        case 'A': if ((str_int == 95) || ((str_int >= 65) && (str_int <= 90)) || ((str_int >= 97) && (str_int<=122))) state ='B';
                  else if ((str_int >= 48) && (str_int <= 57))state ='D';
                  break;
        case 'B': if ((str_int == 95) || ((str_int >= 48) && (str_int <= 57)) || ((str_int >= 65) && (str_int<= 90)) || ((str_int >= 97) && (str_int <= 122))) state = 'B';
                  break;
        case 'D': if ((str_int == 95) || ((str_int >= 48) && (str_int <= 57)) || ((str_int >= 65) && (str_int<= 90)) || ((str_int >= 97) && (str_int <= 122)))  state = 'D';
                  break;               
    }
    if(state=='D') {break;} // this condition i was missing for a long time. But i m not understading why without this line program is not giving correct result
   }

   if(state=='B')
   {
      printf("\n Accepted: Valid identifier");
   }
   else
   {
      printf("\n Not Accepted: Invalid identifier");
   }
}

