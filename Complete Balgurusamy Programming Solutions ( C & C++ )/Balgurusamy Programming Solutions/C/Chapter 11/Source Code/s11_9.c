#include<stdio.h>
void rev(int *p,int *q);
int i;
void main()
{
int a[10],b[10];
	for(i=0;i<10;i++)
	{
		printf("\nValue %d :  ",i+1);
		scanf("%d",&a[i]);
	}
rev(a,b);
printf("\n\nSuccessfully Reversed The Array : \n\n");
	for(i=0;i<10;i++)
	{
		printf("\nValue %d :  %d",i+1,b[i]);
	}
}

void rev(int *p,int *q)
{
	for(i=0;i<10;i++)
	{
		*(q+9)=*p;
      p++,q--;
	}
}