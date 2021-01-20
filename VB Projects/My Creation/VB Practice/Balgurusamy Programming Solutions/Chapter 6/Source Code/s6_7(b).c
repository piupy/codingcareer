#include<stdio.h>
void main()
{
int i,j;
printf("\n\n");
for(i=1;i<=5;i++)
{
	for(j=1;j<=5;j++)
	{
	if(i<=j)
	{
	printf("    *\t");
	}
	else
	{
	printf("\t");
	}
	}
	printf("\n\n");
}
}