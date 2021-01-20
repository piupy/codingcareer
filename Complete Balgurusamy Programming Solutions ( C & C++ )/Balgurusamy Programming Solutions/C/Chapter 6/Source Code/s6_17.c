#include<stdio.h>
#include<math.h>
void main()
{
double x,y,pi=3.14,i;
int j;
printf("\n\nEquation of y = sin(x) and Values of Y with Respect to Different Values of X\n\n");
for(j=0;j<10;j++)
printf("________");
printf("\n");
printf("\t\tAngle(x)\t\tSin(x)\n");
for(j=0;j<10;j++)
printf("________");
printf("\n");
for(i=0;i<=180;i=i+15)
{
y=sin((pi/180)*i);
printf("\t\t%d\t\t\t%lf\n",(int)i,y);
}
}

