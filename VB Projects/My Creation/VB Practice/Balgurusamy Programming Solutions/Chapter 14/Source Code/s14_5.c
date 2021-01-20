#include<stdio.h>
#define ARRAY(b,n,j) for(;j<n;j++)printf("\n\tValue %d :  %d\n",j+1,b[j]);
#define SUM(a,i,k,sum) for(;k<i;k++)sum=sum+a[k];
int sum=0;
void main()
{
int a[20],n,i,j=0,k=0;
printf("\n Enter The Elements of Array ( Enter -1 To End ) :---> \n\n");
	for(i=0;i<20;i++)
	{
		printf("\nValue %d :  ",i+1);
		scanf("%d",&a[i]);
			if(a[i]==-1)
			break;
	}
ARRAY(a,i,j);
SUM(a,i,k,sum);
printf("\n\tTotal Sum =  %d",sum);
}
