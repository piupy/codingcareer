#include<stdio.h>
void main()
{
int n,y[10],i,x;
long int sum=0;
printf("Enter The Value of X :  ");
scanf("%d",&x);
printf("\nHow Many Numbers You Want :  ");
scanf("%d",&n);
	for(i=0;i<n;i++)
	{
	printf("\na%d :  ",i);
	scanf("%d",&y[i]);
	}
		for(i=0;i<n;i++)
		{
		if(i==n-1)
		sum=sum+y[i];
		else
		sum=(sum+y[i])*x;
		}
printf("\nSum = %ld",sum);
}
