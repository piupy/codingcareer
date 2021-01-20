#include<stdio.h>
void main()
{
int i,j;
printf("\n");
for(i=1;i<=5;i++)
{
	for(j=1;j<=5;j++)
	{
	if(i==3 && j==3)
	printf("\t  O  ");
	else
	printf("\t  S  ");
	}
	printf("\n\n");
}
}
