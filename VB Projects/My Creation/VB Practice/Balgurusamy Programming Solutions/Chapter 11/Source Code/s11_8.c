#include<stdio.h>
#define size 10
void sort(int (*)[]);
void search(int (*)[]);
int i,j,max,x[10],count=0,temp,index,first=0,last,start=0,middle,key,flag=0;
void main()
{
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
sort(x);
printf("Sorted List is : \n\n");
for(i=0;i<count;i++)
{
printf("%d\n",x[i]);
}
search(x);
}

/////////////////////////// Program Ends ////////////////////////////////////

/////////////////////////// Selection Sort Begins ////////////////////////////

void sort(int (*z)[])
{
	for(j=count;j>0;j--)
	{
		for(i=0;i<j;i++)
		{
			if(i==0)
			{
			max=(*z)[i];
			index=i;
			}
			else
			{
				if((*z)[i]>max)
				{
				max=(*z)[i];
				index=i;
				}
			}
		}
	 temp=(*z)[i-1];
	 (*z)[i-1]=(*z)[index];
	 (*z)[index]=temp;
	}
}

////////////////////////// Selection Sort Ends ///////////////////////////////


////////////////////// Binary Search Begins ////////////////////////////////

void search(int (*b)[])
{
last=count-1;
printf("\n\nEnter The Element You Want To Search : ");
scanf("%d",&key);
middle=(first+last)/2;
for(i=count;i!=0;i=i/2)
{
	if(key==(*b)[middle])
	{
		printf("\n\nElement Found on Position : %d",middle+1);
		flag=1;
		break;
	}
	else if(key < (*b)[middle])
	{
		last=middle-1;
	}
	else if(key > (*b)[middle])
	{
		first=middle+1;
	}
	middle=(first+last)/2;
}
	if(flag==0)
	{
	printf("\n\nElement Not Found in The List");
	}
}

///////////////////////////// Binary Search Ends /////////////////////////////


/*////////////////////////// Alternate Way ///////////////////////////////////

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

//////////////////////////// Search Ends //////////////////////////////////*/
