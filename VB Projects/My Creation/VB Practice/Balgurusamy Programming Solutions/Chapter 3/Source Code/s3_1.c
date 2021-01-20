#include<stdio.h>
void main()
{
int x=10,y=11,z=12,a=x;
printf("The Original Values Are :-> X = %d  Y = %d  Z = %d",x,y,z);
x=y;
y=z;
z=a;
printf("\n\nThe New Values Are :-> X = %d  Y = %d  Z = %d",x,y,a);
}
