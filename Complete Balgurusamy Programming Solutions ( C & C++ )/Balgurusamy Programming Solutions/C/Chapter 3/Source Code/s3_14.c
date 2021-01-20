#include<stdio.h>
void main()
{
int a,b;
printf("\nEnter The Value of Multiple : ");
scanf("%d",&a);
printf("\nEnter The Value of Factor : ");
scanf("%d",&b);
if(a%b==0)
{
printf("\n\nYes , %d is The Multiple of %d",a,b);
}
else
{
printf("\n\nNo , %d is Not The Multiple of %d",a,b);
}
}
