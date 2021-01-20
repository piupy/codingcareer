#include<stdio.h>
void read();
void sort(int [],int []);
void print(int []);
void main()
{
read();
}

void read()
{
int a[10],b[10],c[20],i,j;
printf("Enter The Elements of First Matrix : \n");
for(i=0;i<10;i++)
scanf("%d",&a[i]);
printf("\n\nEnter The Elements of Second Matrix : \n");
for(i=0;i<10;i++)
scanf("%d",&b[i]);
sort(a,b);
}

void sort(int a[],int b[])
{
int i,j,temp,c[20];
	for(i=0;i<10;i++)
	{
		c[i]=a[i];
	}
i=0;
	for(j=10;j<20;j++,i++)
	{
		c[j]=b[i];
	}
for(i=0;i<19;i++)
{
	for(j=0;j<19;j++)
	{
		if(c[j]<c[j+1])
		continue;
		else
		{
		temp=c[j+1];
		c[j+1]=c[j];
		c[j]=temp;
		}
	}
}
print(c);
return;
}

void print(int c[])
{
int i;
printf("\nMerged and Sorted Array\n\n");
for(i=0;i<20;i++)
printf("%d\n\t",c[i]);
return;
}

