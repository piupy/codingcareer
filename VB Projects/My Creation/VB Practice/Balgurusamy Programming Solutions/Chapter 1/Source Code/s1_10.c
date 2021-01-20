#include<stdio.h>
#include<conio.h>
#include<math.h>
void main()
{
float a,b,c,s,area;
clrscr();
printf("The Area of Triangle is Calculated By The Formula : (s(s-a)(s-b)(s-c))^1/2\n\nWhere s is The Semi-Perimeter and a , b , c Are \n\nRespectively The Sides of The Triangle ");
printf("\n\nEnter The First Side of The Triangle  : ");
scanf("%g",&a);
printf("\nEnter The Second Side of The Triangle  : ");
scanf("%g",&b);
printf("\nEnter The Third Side of The Triangle  : ");
scanf("%g",&c);
s=(a+b+c)/2;
area=sqrt(s*(s-a)*(s-b)*(s-c));
printf("\nThe Area of The Triangle is  :  %g ",area);
getch();
}
