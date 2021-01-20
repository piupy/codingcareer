#include<stdio.h>
void main()
{
int row=15,col=18,i,j;
printf("\n\n\n\n\n");
for(i=1;i<=row;i++)
{
	for(j=1;j<=col;j++)
	{
	printf(" ");
	if(i==2 && (j>=3 && j<=16))
	printf(" - ");
	else if(i==3 && (j>=10 && j<=16))
	printf(" - ");
	else if((i==4 && j<=4) || (i==5 && j<=4) || (i==6 && j<=4))
	printf(" * ");
	else if((i==4 && j>4) || (i==5 && j>4) || (i==6 && j>4))
	continue;
	else if((i==7) && (j>=6 && j<=14))
	printf(" - ");
	else if((i==8) && (j>=1 && j<=14))
	printf(" - ");
	else if((i==9) && (j>=1 && j<=14))
	printf(" - ");
	else if((i==10 && j<=14) || (i==11 && j<=14) || (i==12 && j<=14))
	printf("   ");
	else if((i==10 && j>14) || (i==11 && j>14) || (i==12 && j>14))
	printf(" * ");
	else if((i==13) && (j>=5 && j<=14))
	printf(" - ");
	else if((i==14) && (j>=4 && j<=14))
	printf(" - ");
	else if((i==15) && (j>=3 && j<=14))
	printf(" - ");
	else printf(" * ");
	}
	printf("\n");
}
}
