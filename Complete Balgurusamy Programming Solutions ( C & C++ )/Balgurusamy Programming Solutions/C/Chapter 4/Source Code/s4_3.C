#include<stdio.h>
#include<conio.h>
void main()
{
float a,b,c,d;
clrscr();
printf("\n\nEnter The Following Values ");
printf("\n1. 35.7");
printf("\n2. 50.21");
printf("\n3. -23.73");
printf("\n4. -46.45\n\n");
printf("\nEnter First Value : ");
scanf("%f",&a);
printf("Enter Second Value : ");
scanf("%f",&b);
printf("Enter Third Value : ");
scanf("%f",&c);
printf("Enter Last Value : ");
scanf("%f",&d);
printf("\n\nHere Are The Rounded-off Values ( in Integer Form )");
printf("\nFirst Value : %.0f",a);
printf("\nSecond Value : %.0f",b);
printf("\nThird Value : %.0f",c);
printf("\nLast Value : %.0f\n\n",d);
getch();
}