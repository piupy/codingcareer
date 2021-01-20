#include<stdio.h>
void main()
{
long int a,b,c,d,sum=0;
printf("\n\n\t\tEnter A Number : ");
scanf("%ld",&a);
d=a;
while(a!=0)
{
b=a/10;
c=a%10;
sum=sum+c;
a=b;
}
printf("\n\t\tThe Sum of The Digits of %ld is :  %ld",d,sum);
}

