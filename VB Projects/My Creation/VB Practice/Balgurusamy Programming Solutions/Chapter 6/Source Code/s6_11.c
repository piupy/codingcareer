#include<stdio.h>
void main()
{
long int p=1,no=0,a,rem,b;
printf("Enter A Number : ");
scanf("%ld",&a);
b=a;
while(a>0)
{
rem=a%2;
a=a/2;
no=p*rem+no;
p=p*10;
}
printf("\n\nBinary Equivalent of %ld is : %ld",b,no);
}
