#include<stdio.h>
void main()
{
int a[10][10],i,j,row,col,sum=0,avrow[10],avcol[10];
printf("Enter The Rows :  ");
scanf("%d",&row);
printf("\nEnter The Columns :  ");
scanf("%d",&col);
printf("\nEnter The Elements of the Array of Size %d*%d\n\n",row,col);
	for(i=0;i<row;i++)
		{
			for(j=0;j<col;j++)
			{
			scanf("%d",&a[i][j]);
			sum=sum+a[i][j];
			}
			avrow[i]=sum/col;
			sum=0;
		}
sum=0;
	for(j=0;j<col;j++)
		{
			for(i=0;i<row;i++)
			{
			sum=sum+a[i][j];
			}
			avcol[j]=sum/col;
			sum=0;
		}
printf("\nThe Elements Are \n\n");
	for(i=0;i<row;i++)
	{
		for(j=0;j<col;j++)
		{
		printf("%d\t",a[i][j]);
		}
	printf("\n");
	}
printf("\nRow Averages\n\n");
for(i=0;i<row;i++)
{
printf("Average of Row %d ---> %d\n",i+1,avrow[i]);
}
printf("\nColumn Averages\n\n");
for(i=0;i<col;i++)
{
printf("Average of Column %d ---> %d\n",i+1,avcol[i]);
}
}
