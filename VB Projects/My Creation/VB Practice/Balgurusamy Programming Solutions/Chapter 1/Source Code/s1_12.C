#include<stdio.h>
#include<conio.h>
#include<math.h>
#define pi 3.14
void main()
{
float a,b,c;
clrscr();
printf("The Given Points Whose Distance We Want To Find Out Are :\n\n");
printf("(0,0) and (4,5)\n");
a=sqrt(pow((4-0),2)+pow((5-0),2));
printf("\nThe Distance Between These Points is  %g Units Which is The Radius Actually",a);
b=2*pi*a;
printf("\nThe Perimeter of Circle is : %g Units",b);
c=pi*a*a;
printf("\n\nThe Area of Circle is : %g Units",c);
getch();
}