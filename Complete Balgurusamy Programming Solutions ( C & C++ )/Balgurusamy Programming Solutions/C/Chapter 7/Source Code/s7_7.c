#include<stdio.h>
void main()
{
int a[10][10],b[10][10],c[10][10],i,j,k,l,t,row1,row2,col1,col2,sum;
printf("\nEnter The Number of Rows of First Matrix : ");
scanf("%d",&row1);
printf("\nEnter The Number of Columns of First Matrix : ");
scanf("%d",&col1);
printf("\nEnter The Number of Rows of Second Matrix : ");
scanf("%d",&row2);
printf("\nEnter The Number of Columns of Second Matrix : ");
scanf("%d",&col2);

/////////// If Column 1 is equal to Row 2 , perform multiplication otherwise not /////////////////////

if(col1==row2)
{
	printf("\n\nEnter The Elements of The Matrix 1 : \n\n");
		for(i=0;i<row1;i++)
		{
			for(j=0;j<col1;j++)
			{
				scanf("%d",&a[i][j]);
			}
		}
	printf("\n\nEnter The Elements of The Matrix 2 : \n\n");
		for(i=0;i<row2;i++)
		{
			for(j=0;j<col2;j++)
			{
				scanf("%d",&b[i][j]);
			}
		}
	printf("\n\nThe Elements of The Matrix 1 : \n\n");
		for(i=0;i<row1;i++)
		{
			for(j=0;j<col1;j++)
			{
				printf("%d\t",a[i][j]);
			}
			printf("\n");
		}
	printf("\n\nThe Elements of The Matrix 2 : \n\n");
		for(i=0;i<row2;i++)
		{
			for(j=0;j<col2;j++)
			{
				printf("%d\t",b[i][j]);
			}
			printf("\n");
		}
/////////// Multiplication Starts ////////////////
k=0;
	for(i=0;i<row1;i++)
	{
		sum=0,k=0,l=0;
		for(t=0;t<col1;t++)
		{
			for(j=0;j<col1;j++)
			{
				sum=sum+a[i][j]*b[j][k];
			}
			c[i][l]=sum;
			k++,l++;
			sum=0;
		}
	}
///////////// Multiplication Ends ////////////////
printf("\n\nThe Elements of The Product Matrix : \n\n");
	for(i=0;i<row1;i++)
	{
		for(j=0;j<col2;j++)
		{
			printf("%d\t",c[i][j]);
		}
		printf("\n");
	}
}
else
{
printf("\n\nMultiplication is not possible because Column 1 is not equal to Row 2");
}

}
