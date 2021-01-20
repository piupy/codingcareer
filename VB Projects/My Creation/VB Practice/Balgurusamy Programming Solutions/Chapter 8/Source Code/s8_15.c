#include<stdio.h>
#include<stdlib.h>
void main()
{
int row,col,i,j,k,l,x,space,till;
char str[]="123456789";
row=5;
space=row;
col=(2*row)-1;
printf("\n\n\t");
for(i=1;i<=row;i++)
{
	till=(2*i)-1;
	x=str[i-1]-48;
	for(j=1;j<=col;j++)
	{
		if(space==j)
		{
		printf("%d",x);
			for(k=x+1;k<=till;k++)
			printf("%d",k);
				for(l=k-2;l>=i;l--)
				printf("%d",l);
				break;
		}
		else
		printf(" ");
	}
printf("\n\t");
space--;
}
}