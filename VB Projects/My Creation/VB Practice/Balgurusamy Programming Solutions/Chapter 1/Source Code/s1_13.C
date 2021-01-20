#include<stdio.h>
#include<conio.h>
#include<math.h>
#define pi 3.14
void main()
{
float a,b,c;
clrscr();
printf("The Given Points Whose Distance We Want To Find Out Are :\n\n");
printf("(2,2) and (5,6)\n");
a=sqrt(pow((5-2),2)+pow((6-2),2));
printf("\nThe Distance Between These Points is  %g Units Which is The Diameter Actually",a);
b=a/2;
printf("\nSo The Radius is %g Units ( Radius = Diameter / 2 )",b);
c=pi*b*b;
printf("\n\nThe Area of The Circle is  :  %g Units",c);
getch();
}