#include<stdio.h>
#include<string.h>
#define size 5
typedef struct
{
char name[20];
long int pop;
float level;
}city;

city c[size];

void read();
void disp();
void sort();


void main()
{
read();
printf("\n\nFollowing Details Were Entered\n\n");
disp();
sort();
disp();
}

/************************** Read Function ************************************/

void read()
{
int i;
	for(i=0;i<size;i++)
	{
		printf("\n\n\t\tFor City %d\n\n",i+1);
		printf("\nEnter The City Name :  ");
		scanf("%s",c[i].name);
		printf("\nEnter The Population :  ");
		scanf("%ld",&c[i].pop);
		printf("\nEnter The Literacy Level :  ");
		scanf("%f",&c[i].level);
	}
}

/********************** End of Read Function *********************************/

/*************************** Sort Function ***********************************/

void sort()
{
int i,ch,j;
char tname[20];
long int tpop;
float tlevel;
printf("\n\nSorting Can Be Done On The Following\n\n");
printf("1. City Name      ( Alphabetically )\n");
printf("2. Population     ( High To Low )\n");
printf("3. Literacy Level ( High To Low )\n");
printf("\n\nSort on :  ");
scanf("%d",&ch);
printf("\n");
switch(ch)
{
case 1 : for(j=0;j<size-1;j++)
			{
			for(i=0;i<(size-j-1);i++)
			{
				if( strcmp(c[i].name,c[i+1].name)>0 )
				{
					strcpy(tname,c[i+1].name);
					strcpy(c[i+1].name,c[i].name);
					strcpy(c[i].name,tname);

					tpop=c[i+1].pop;
					c[i+1].pop=c[i].pop;
					c[i].pop=tpop;

					tlevel=c[i+1].level;
					c[i+1].level=c[i].level;
					c[i].level=tlevel;
				}
			}
			}
			printf("\n\nSuccessfully Sorted By Name\n\n");
			break;

case 2 : for(j=0;j<size-1;j++)
			{
			for(i=0;i<(size-j-1);i++)
			{
				if( c[i].pop < c[i+1].pop )
				{
					strcpy(tname,c[i+1].name);
					strcpy(c[i+1].name,c[i].name);
					strcpy(c[i].name,tname);

					tpop=c[i+1].pop;
					c[i+1].pop=c[i].pop;
					c[i].pop=tpop;

					tlevel=c[i+1].level;
					c[i+1].level=c[i].level;
					c[i].level=tlevel;
				}
			}
			}
			printf("\n\nSuccessfully Sorted By Population\n\n");
			break;

case 3 : for(j=0;j<size-1;j++)
			{
			for(i=0;i<(size-j-1);i++)
			{
				if( c[i].level < c[i+1].level )
				{
					strcpy(tname,c[i+1].name);
					strcpy(c[i+1].name,c[i].name);
					strcpy(c[i].name,tname);

					tpop=c[i+1].pop;
					c[i+1].pop=c[i].pop;
					c[i].pop=tpop;

					tlevel=c[i+1].level;
					c[i+1].level=c[i].level;
					c[i].level=tlevel;
				}
			}
			}
			printf("\n\nSuccessfully Sorted By Literacy Level\n\n");
			break;

default : printf("\n\nSorry! List Could Not Be Sorted\n\n");
			 break;
}
}

/******************** End of Sort Function **********************************/

/*********************** Display Function ***********************************/

void disp()
{
int i;
printf("\n  Name\t\t   Population\t\t\tLiteracy Level\n\n");
for(i=0;i<size;i++)
{
printf("   %-20s\t%-10ld\t\t\t%-10g\n\n",c[i].name,c[i].pop,c[i].level);
}
}

/******************* End of Display Function ********************************/
