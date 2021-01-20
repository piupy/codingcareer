#include<stdio.h>
void main()
{
long int x,a,b,rev=0;
printf("Enter The Number : ");
scanf("%ld",&x);
printf("\nYou Entered : %ld",x);
while(x!=0)
{
a=x/10;
b=x%10;
rev=rev*10+b;
x=a;
}
printf("\n\nReverse Number : %ld",rev);
}
