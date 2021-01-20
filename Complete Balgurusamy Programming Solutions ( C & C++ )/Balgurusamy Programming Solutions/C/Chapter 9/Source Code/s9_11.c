#include<stdio.h>
void read();
int find(int [][10],int,int);
void main()
{
read();
}

void read()
{
int a[10][10],row1,col1,i,j;
printf("\nEnter The Row of Matrix : ");
scanf("%d",&row1);
printf("\nEnter The Column of Matrix : ");
scanf("%d",&col1);
printf("\nEnter The Elements of Array : \n\n");
for(i=0;i<row1;i++)
for(j=0;j<col1;j++)
scanf("%d",&a[i][j]);
printf("\n\n Matrix : \n\n");
for(i=0;i<row1;i++)
{
for(j=0;j<col1;j++)
{
printf("%d\t",a[i][j]);
}
printf("\n");
}
printf("\n\nThe Largest Element of The Array :  %d",find(a,row1,col1));
return;
}

int find(int x[][10],int row1,int col1)
{
int large,i,j;
large=x[0][0];
for(i=0;i<row1;i++)
{
	for(j=0;j<col1;j++)
	{
		if(x[i][j]>large)
		{
		large=x[i][j];
		}
	}
}
return(large);
}
