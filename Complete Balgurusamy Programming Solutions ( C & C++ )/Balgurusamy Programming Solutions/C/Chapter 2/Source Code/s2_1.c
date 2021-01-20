#include<stdio.h>
void main()
{
int n,i;
float sum=0;
printf("Enter The Number Upto Which You Want The Series : ");
scanf("%d",&n);
for(i=1;i<=n;i++)
{sum=sum+1.0/i;}
printf("\nThe Sum of The Series is : %g",sum);
}

