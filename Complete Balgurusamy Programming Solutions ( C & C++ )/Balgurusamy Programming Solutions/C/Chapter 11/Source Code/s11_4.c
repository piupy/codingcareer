#include<stdio.h>
void sum(int (*)[5],int (*)[5],int (*)[5]);
void main()
{
int a[5][5],b[5][5],c[5][5],i,j;
printf("Enter The Elements of First Matrix :\n\n");
	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			scanf("%d",&a[i][j]);
		}
	}
printf("\n\nEnter The Elements of Second Matrix :\n\n");
	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			scanf("%d",&b[i][j]);
		}
	}
printf("\n\nElements Were Entered Successfully\n\n");
sum(a,b,c);
printf("\nElements of First Matrix :->\n\n");
	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			printf("%d\t",a[i][j]);
		}
		printf("\n");
	}
printf("\n\nElements of Second Matrix :->\n\n");
	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			printf("%d\t",b[i][j]);
		}
		printf("\n");
	}
printf("\n\nElements of The Sum Matrix :->\n\n");
	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			printf("%d\t",c[i][j]);
		}
		printf("\n");
	}
}

void sum(int (*x)[5],int (*y)[5],int (*z)[5])
{
int i,j;
	for(i=0;i<3;i++)
	{
		for(j=0;j<3;j++)
		{
			(*(z+i))[j]=(*(x+i))[j] + (*(y+i))[j];
		}
	}
}
