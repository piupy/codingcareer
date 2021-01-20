#include<stdio.h>
void main()
{
int i,j,x[5][5],flag;
	for(i=0;i<5;i++)
	{
		for(j=0;j<5;j++)
		{
			flag=((i==0 && j==4) || (i==1 && j==3) || (i==2 && j==2) || (i==3 && j==1) || (i==4 && j==0)) ? 0 : ( ((i==0 && j<4) || (i==1 && j<3) || (i==2 && j<2) || (i==3 && j==0)) ? 1 : -1 );
			printf("%d\t",flag);
		}
		printf("\n\n");
	}
}