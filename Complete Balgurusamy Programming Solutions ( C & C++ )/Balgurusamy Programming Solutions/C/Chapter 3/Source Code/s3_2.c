#include<stdio.h>
void main()
{
float x;
int y;
printf("Enter A Floating Point Number : ");
scanf("%f",&x);
y=x;
y=y-((y/10)*10);
printf("The Rightmost Digit of The Integral Part of The Number You Entered is : %d",y);
}