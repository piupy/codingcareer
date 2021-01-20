#include<stdio.h>
void main()
{
int i,j,max,x[10],count=0,temp,index,first=0,last,start=0,middle,key,size,flag=0;
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

////////////////// Binary Search Begins /////////////////////

last=count-1;
printf("\n\nEnter The Element You Want To Search : ");
scanf("%d",&key);
middle=(first+last)/2;
while(1)
{
if(key==x[middle])
{
printf("\n\nElement Found on Position : %d",middle+1);
break;
}
else if(key < x[middle])
{
last=middle-1;
}
else if(key > x[middle])
{
first=middle+1;
}
middle=(first+last)/2;
if((first > count-1) || (last < start))
{
printf("\n\nElement Not Found in The List");
break;
}
}

////////////////// Binary Search Ends /////////////////////////////////


/*///////////////////// Alternate Way //////////////////////////////////////


last=count-1;
printf("\n\nEnter The Element You Want To Search : ");
scanf("%d",&key);
middle=(first+last)/2;
for(i=count;i!=0;i=i/2)
{
	if(key==x[middle])
	{
	printf("\n\nElement Found on Position : %d",middle+1);
	flag=1;
	break;
	}
	else if(key < x[middle])
	{
	last=middle-1;
	}
	else if(key > x[middle])
	{
	first=middle+1;
	}
	middle=(first+last)/2;
}
	if(flag==0)
	{
	printf("\n\nElement Not Found in The List");
	}

/////////////////////// Program Ends /////////////////////////////////////*/

}
