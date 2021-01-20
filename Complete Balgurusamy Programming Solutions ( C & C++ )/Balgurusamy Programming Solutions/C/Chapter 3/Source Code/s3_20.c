#include<stdio.h>
void main()
{
float x;
int i;
printf("\nEnter Any Number : ");
scanf("%f",&x);
printf("\n\nThe Number Entered is : %g",x);
printf("\n\nThe Number Just Less Than %g is : %d",x,int(x));
printf("\n\nThe Number Just Greater Than %g is : %d",x,(int(x)+1));
printf("\n");
for(i=0;i<80;i++)
printf("_");
printf("\n\nSo, This is a simple example of use of typecasting. Typecasting can also be used in several other situations.");
printf("\n\n");
for(i=0;i<80;i++)
printf("_");
}
