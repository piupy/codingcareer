#include<stdio.h>
#include<string.h>
#define SIZE 5

struct product
{
char code[10];
float cost;
int no;
}p[SIZE];

void main()
{
int i,flag=0;
char codes[5][10],search[10];
FILE *fp;
fp=fopen("random.txt","w+");
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
		strcpy(codes[i],p[i].code);
	}
printf("\n\n\nEnter The Code of Product :  ");
scanf("%s",search);
	for(i=0;i<SIZE;i++)
	{
		if( strcmp(search,codes[i])==0 )
		{
			printf("\n\nProduct Code :    %s",p[i].code);
			printf("\n\nProduct Cost :    %g",p[i].cost);
			printf("\n\nProducts Available :    %d",p[i].no);
			flag=1;
			break;
		}
	}
if(flag==0)
printf("\nNo Records Were Found");
}
