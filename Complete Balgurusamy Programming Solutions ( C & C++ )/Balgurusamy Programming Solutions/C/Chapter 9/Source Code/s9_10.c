#include<stdio.h>
#include<math.h>
void readwrite(void);
void main()
{
readwrite();
}

void readwrite()
{
float a,b,c,s,area;
int ch;
printf("The Area of Triangle is Calculated By The Formula : (s(s-a)(s-b)(s-c))^1/2\n\nWhere s is The Semi-Perimeter and a , b , c Are \n\nRespectively The Sides of The Triangle ");
printf("\n\nEnter The First Side of The Triangle  : ");
scanf("%g",&a);
printf("\nEnter The Second Side of The Triangle  : ");
scanf("%g",&b);
printf("\nEnter The Third Side of The Triangle  : ");
scanf("%g",&c);
s=(a+b+c)/2;
area=sqrt(s*(s-a)*(s-b)*(s-c));
printf("\n1. Area of Triangle");
printf("\n2. Perimeter of Triangle");
printf("\n\nEnter Your Choice :  ");
scanf("%d",&ch);
switch(ch)
{
case 1 : printf("\nArea of Triangle :  %g sq. units",area);
         if(area==0)
			printf("\n\nA Triangle With The Given Dimensions Could Not Be Formed");
			break;

case 2 : printf("\nPerimeter of Triangle :  %g metre",2*s);
			break;

default : printf("\nInvalid Input");
			break;

}
return;
}
