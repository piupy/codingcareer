#include<stdio.h>
#include<conio.h>
#include<math.h>
void temp();
void more();
float f,c;
void main()
{
clrscr();
printf("\nThe Relationship Between Temperatures in Fahrenheit and Celcius is : \n\nF = 9/5 C + 32");
temp();
more();
getch();
}
void more()
{ int ch;
printf("\n\n\n\n\nWant To Find For Any Other Temperature ? ");
printf("\nType 1 For Yes ");
printf("\nType 2 For No ");
printf("\nType Your Choice Here : ");
scanf("%d",&ch);
switch(ch)
{ case 1 : {   temp();
					 printf("\n");
					 break;
				 }

  case 2 : {  printf("\n\nBye");
					 printf("\n");
					 break;
				 }
  default : { printf("\n\nInvalid Response");
				  break;
				  }
}}
void temp()
{
printf("\n\nEnter The Temperature in Celcius : ");
scanf("%g",&c);
f=( (1.8) * c + 32);
printf("\nTemperature in Fahrenheit is :  %g",f);
if(f==c)
{printf("\n\nNote : The Temperature is Same in Celcius As Well As Fahrenheit At %g ",f);}
}
