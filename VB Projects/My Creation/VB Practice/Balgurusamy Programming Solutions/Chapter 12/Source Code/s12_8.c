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
fp=fopen("product.txt","w+");
	for(i=0;i<SIZE;i++)
	{
		printf("\nEnter The Code of Product %d :  ",i+1);
		scanf("%s",p[i].code);
		printf("\nEnter The Cost of Product %d :  ",i+1);
		scanf("%f",&p[i].cost);
		printf("\nEnter The Number of Products Available :  ");
		scanf("%d",&p[i].no);
		fprintf(fp,"    %s\t\t\t    %g\t\t\t    %d\n\n",p[i].code,p[i].cost,p[i].no);
		printf("\n\n");
	}
}