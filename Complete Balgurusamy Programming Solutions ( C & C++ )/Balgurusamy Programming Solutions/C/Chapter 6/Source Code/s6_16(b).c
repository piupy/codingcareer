#include<stdio.h>
void main()
{
int i,j;
printf("\n");
for(i=1;i<=5;i++)
{
	for(j=1;j<=5;j++)
	{
	if(i==1 || i==5 || (i==2 && (j==1 || j==5)) || (i==3 && (j==1 || j==5)) ||  (i==4 && (j==1 || j==5)))
	printf("\t  S  ");
	else
	printf("\t     ");
	}
	printf("\n\n");
}
}