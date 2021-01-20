#include<stdio.h>
#include<math.h>
void main()
{
int x=0,i;
float pi=22/7.0;
for(i=0;i<80;i++)
printf("_");
printf("\n  x(degrees)\t\t\tSin(x)\t\t\tCos(x)");
printf("\n");
for(i=0;i<80;i++)
printf("_");
for(i=0;i<13;i++)
{
printf("\n\n\t%d\t\t\t%.2f\t\t\t%.2f",x,sin((pi/180)*x),cos((pi/180)*x));
x=x+15;
}
printf("\n");
for(i=0;i<80;i++)
printf("_");
printf("\n\t\t\t\tEND OF THE PROGRAM\n");
for(i=0;i<80;i++)
printf("_");
}
