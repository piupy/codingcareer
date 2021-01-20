#include<stdio.h>
void main()
{
int x,sum=0,a,b;
printf("Enter The 4-Digit Integer : ");
scanf("%d",&x);
while(x!=0)
{
b=x/10;
a=x%10;
sum=sum+a;
x=b;
}
printf("\nThe Sum is : %d",sum);
}