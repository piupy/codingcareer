#include<stdio.h>
#include<conio.h>
#include<math.h>
#define pi 3.14
void main()
{
int a,c;
clrscr();
printf("Enter The Value of Radius of The Circle : ");
scanf("%d",&a);
c=pi*a*a;
printf("\n\nThe Area of Circle is : %d Units",c);
getch();
}