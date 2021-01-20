#include<stdio.h>
int sort(int *,int);
void main()
{
int a[20],n,i,ch,check;
printf(" Enter Number of Values You Want To Enter :  ");
scanf("%d",&n);
	for(i=0;i<n;i++)
	{
	printf("\nValue %d :  ",i+1);
	scanf("%d",&a[i]);
	}
check=sort(a,n);
	if(check==1)
	{
		printf("\n\nNow I Want To Add The Value :  ");
		scanf("%d",&ch);
		a[n]=ch;
		printf("\n\nSuccessfully Added The Value\n\n");
		check=sort(a,n+1);
			for(i=0;i<n+1;i++)
			{
				printf("\nValue %d :  %d\n",i+1,a[i]);
			}
	}
	else
	{
		printf("\nYou Didn't Entered The Sorted List!!!\n");
	}
}

int sort(int *x,int m)
{
int i,j,temp,flag=1;
	for(i=1;i<=m-1;i++)
	{
		for(j=1;j<=m-i;j++)
		{
			if( *(x+j-1) > *(x+j) )
			{
				temp=*(x+j-1);
				*(x+j-1)=*(x+j);
				*(x+j)=temp;
				flag=0;
			}
		}
	}
return(flag);
}
