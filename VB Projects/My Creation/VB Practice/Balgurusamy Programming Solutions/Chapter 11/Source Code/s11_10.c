#include<stdio.h>
#define row 3
#define col 3
int check(int (*x)[col],int (*y)[col]);
int i,j;
void main()
{
int a[row][col],b[row][col],x;
printf("Enter The Elements of First Matrix : \n\n");
	for(i=0;i<row;i++)
	{
		for(j=0;j<col;j++)
		{
			scanf("%d",&a[i][j]);
		}
	}
printf("\n\nEnter The Elements of Second Matrix : \n\n");
	for(i=0;i<row;i++)
	{
		for(j=0;j<col;j++)
		{
			scanf("%d",&b[i][j]);
		}
	}
x=check(a,b);
	if(x==1)
	{
		printf("\n\nBoth Arrays Are Identical\n\n");
	}
	else
	{
		printf("\n\nBoth Arrays Are Different\n\n");
	}
}

int check(int (*x)[col],int (*y)[col])
{
int flag;
	for(i=0;i<row;i++)
	{
		for(j=0;j<col;j++)
		{
			if( (*(x+i))[j] == (*(y+i))[j] )
			{
				flag=1;
				continue;
			}
			else
			{
				flag=0;
				goto jump;
			}
		}
	}
jump :
return(flag);
}













