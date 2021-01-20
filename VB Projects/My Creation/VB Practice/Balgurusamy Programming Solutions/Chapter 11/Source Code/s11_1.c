#include<stdio.h>
void main()
{
int a[10],*ptr,i=1;
	for(ptr=a;ptr<a+10;ptr++,i++)
	{
		printf("\nValue %d :  ",i);
		scanf("%d",ptr);
	}
ptr--;
i=1;
printf("\nValues Were Stored Successfully.Here Are They in Reverse Order\n\n");
	for(;ptr>=a;ptr--,i++)
	{
		printf("\nValue %d :  %d\n",i,*ptr);
	}
}
