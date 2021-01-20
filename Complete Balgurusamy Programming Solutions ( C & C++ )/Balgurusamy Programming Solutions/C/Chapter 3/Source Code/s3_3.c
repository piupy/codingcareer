#include<stdio.h>
void main()
{
int y,z;
float x;
printf("Enter A Floating Point Number : ");
scanf("%f",&x);
y=x;
z=(y/10)-(((y/10)/10)*10);
y=y-((y/10)*10);
printf("\n\nThe Second Last Digit of The Integral Part is : %d",z);
printf("\n\nThe Last Digit of The Integral Part is : %d",y);
}