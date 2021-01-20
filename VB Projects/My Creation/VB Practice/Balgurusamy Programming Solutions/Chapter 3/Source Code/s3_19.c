#include<stdio.h>
void main()
{
int x;
printf(" Enter The Number : ");
scanf("%d",&x);
if(x%2==0)
{
printf("\n Number Entered ---> %d is an Even Number",x);
}
else
{
printf("\n Number Entered ---> %d is an Odd Number",x);
}
}