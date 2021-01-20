#include<stdio.h>
void main()
{
int x,y;
short int z;
x=123456;
y=654321;
z=x+y;
printf("\n\nX = %d",x);
printf("\n\nY = %d",y);
printf("\n\nZ = %d",z);
printf("\n\nThis problem is based on the concept of Overflow as an Integer Variable\n can hold the values lying in the range of -32768 to 32767 only. In this \ncase, the limt is crossed so the variable couldn't store the values.");
}
