#include<stdio.h>
void main()
{
long int m,p=1,i;
printf("\n\n\t\tEnter A Number : ");
scanf("%ld",&m);
for(i=m;i>=1;i--)
p=i*p;
printf("\n\t\tFactorial of %ld is :  %ld",m,p);
}

