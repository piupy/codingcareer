#include<stdio.h>
void main()
{
int i,j,m,x,binom;
printf("\n\n\t    m x ");
for(i=0;i<=10;i++)
printf("%4d",i);
printf("\n\t------------------------------------------------------\n\n");
m=0;
do
{
printf("\t    %2d  ",m);
x=0,binom=1;
	while(x<=m)
	{
		if(m==0 || x==0)
		{
		printf("%4d",binom);
		}
		else
		{
		binom=binom*(m-x+1)/x;
		printf("%4d",binom);
		}
		x++;
	}
	printf("\n");
	m++;
}while(m<=10);
printf("\n\t------------------------------------------------------");
}











