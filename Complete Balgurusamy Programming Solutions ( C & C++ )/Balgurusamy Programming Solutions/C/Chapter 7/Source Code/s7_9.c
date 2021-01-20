#include<stdio.h>
#define size 10
void main()
{
int i,j,max,x[10],count=0,temp,index;
printf("Enter The Elements of List ( Enter -1 to End ) : \n\n");
for(i=0;i<size;i++)
{
scanf("%d",&x[i]);

	if(x[i]==-1)
	{
	break;
	}
count++;
}

//////////////////// Selection Sort Begins ////////////////////

	for(j=count;j>0;j--)
	{
		for(i=0;i<j;i++)
		{
			if(i==0)
			{
			max=x[i];
			index=i;
			}
			else
			{
				if(x[i]>max)
				{
				max=x[i];
				index=i;
				}
			}
		}
	 temp=x[i-1];
	 x[i-1]=x[index];
	 x[index]=temp;
	}

//////////////////// Selection Sort Ends ////////////////////

printf("Sorted List is : \n\n");
for(i=0;i<count;i++)
{
printf("%d\n",x[i]);
}
}
