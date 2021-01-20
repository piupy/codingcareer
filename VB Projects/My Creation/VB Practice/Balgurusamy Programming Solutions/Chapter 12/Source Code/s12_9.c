#include<stdio.h>
#define SIZE 5

struct product
{
char code[10];
float cost;
int no;
}p[SIZE];

void main()
{
int i;
FILE *fp;
fp=fopen("value.txt","w+");
fprintf(fp," Product Code\tProduct Cost\tProducts Available\t   Total Value\n____________\t____________\t__________________\t   ___________\n\n");
	for(i=0;i<SIZE;i++)
	{
		printf("\nEnter The Code of Product %d :  ",i+1);
		scanf("%s",p[i].code);
		printf("\nEnter The Cost of Product %d :  ",i+1);
		scanf("%f",&p[i].cost);
		printf("\nEnter The Number of Products Available :  ");
		scanf("%d",&p[i].no);
		fprintf(fp,"    %s\t\t    %g\t\t        %d\t\t\t%g\n\n",p[i].code,p[i].cost,p[i].no,(p[i].cost)*(p[i].no));
		printf("\n\n");
	}
}