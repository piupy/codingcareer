#include<stdio.h>
void main()
{
float a,b,c;
printf("\nEnter First Number : ");
scanf("%f",&a);
printf("\nEnter Second Number : ");
scanf("%f",&b);
printf("\nEnter Third Number : ");
scanf("%f",&c);
printf("\nThe Largest Number is : %g",(a>b)?((a>c)?a:c):((b>c)?b:c));
}