#include<stdio.h>
#include<string.h>
#define size 10
typedef struct
{
int day;
int month;
int year;
}date;


typedef struct
{
char name[20];
date d;
int marks;
}student_record;

student_record s[size];


void read();
void print(student_record []);
void rank(student_record []);
int validate(student_record);

void main()
{
read();
}

/***************************** Read Function *********************************/

void read(void)
{
int k,check,flag=1;
	for(k=0;k<size;k++)
	{
		printf("\n\t\tFor Student %d\n",k+1);
		printf("\nEnter The Name :  ");
		scanf("%s",s[k].name);
		printf("\nEnter The Day ( in Number ) :  ");
		scanf("%d",&(s[k].d.day));
		printf("\nEnter The Month ( in Number )  :  ");
		scanf("%d",&(s[k].d.month));
		printf("\nEnter The Year ( in Number )  :  ");
		scanf("%d",&(s[k].d.year));
		printf("\nEnter The Total Marks :  ");
		scanf("%d",&(s[k].marks));
		printf("\n");
		check=validate(s[k]);
			if(check==0)
			{
				printf("\n\nError.");
				flag=0;
				break;
			}
	}
if(flag==1)
{
print(s);
}
else
printf("Program Terminated Due To Invalid Input\n\n");
}

/************************** End of Read Function *****************************/


/**************************** Validate Function *****************************/

int validate(student_record s)
{

	if( (s.d.day<1) || (s.d.month<1) || (s.d.year<1) || (s.d.day>31)  || (s.d.month>12) )
	{
	printf("\nInvalid Date.\n");
	return(0);
	}

	else if(s.d.month==2)
	{
		if( s.d.year % 4 != 0 )
		{
			if(s.d.day>28)
			{
			printf("\nInvalid Date.%d is Not A Leap Year.So February Can Have Atmost 28 Days.\n",s.d.year);
			return(0);
			}
			else
			return(1);
		}
		else
		{
			if(s.d.day>29)
			{
			printf("\nInvalid Date.%d is A Leap Year.So February Can Have Atmost 29 Days.\n",s.d.year);
			return(0);
			}
			else
			return(1);
		}
	}

	else if( (s.d.month==4) || (s.d.month==6) || (s.d.month==9) || (s.d.month==11) )
	{
		if(s.d.day>30)
		{
			switch(s.d.month)
			{
				case 4 :  printf("\nInvalid Date.April Has Atmost 30 Days Only\n");
							 break;

				case 6 :  printf("\nInvalid Date.June Has Atmost 30 Days Only\n");
							 break;

				case 9 :  printf("\nInvalid Date.September Has Atmost 30 Days Only\n");
							 break;

				case 11 : printf("\nInvalid Date.November Has Atmost 30 Days Only\n");
							 break;
			}
			return(0);
		}
		else
		return(1);
	}

	else
	{
	return(1);
	}
}

/********************** End of Validate Function *****************************/

/*********************** Print Function **************************************/

void print(student_record s[])
{
int i;
static int y=1;
for(i=0;i<8;i++)
{
printf("__________");
}
printf("\n");
for(i=0;i<size;i++)
{
switch(s[i].d.month)
{
case 1 : printf("\nDate of Birth of Student %d :->   January %d,%d\n",y++,s[i].d.day,s[i].d.year);
			break;

case 2 : printf("\nDate of Birth of Student %d :->   February %d,%d\n",y++,s[i].d.day,s[i].d.year);
			break;

case 3 : printf("\nDate of Birth of Student %d :->   March %d,%d\n",y++,s[i].d.day,s[i].d.year);
			break;

case 4 : printf("\nDate of Birth of Student %d :->   April %d,%d\n",y++,s[i].d.day,s[i].d.year);
			break;

case 5 : printf("\nDate of Birth of Student %d :->   May %d,%d\n",y++,s[i].d.day,s[i].d.year);
			break;

case 6 : printf("\nDate of Birth of Student %d :->   June %d,%d\n",y++,s[i].d.day,s[i].d.year);
			break;

case 7 : printf("\nDate of Birth of Student %d :->   July %d,%d\n",y++,s[i].d.day,s[i].d.year);
			break;

case 8 : printf("\nDate of Birth of Student %d :->   August %d,%d\n",y++,s[i].d.day,s[i].d.year);
			break;

case 9 : printf("\nDate of Birth of Student %d :->   September %d,%d\n",y++,s[i].d.day,s[i].d.year);
			break;

case 10 : printf("\nDate of Birth of Student %d :->   October %d,%d\n",y++,s[i].d.day,s[i].d.year);
			break;

case 11 : printf("\nDate of Birth of Student %d :->   November %d,%d\n",y++,s[i].d.day,s[i].d.year);
			break;

case 12 : printf("\nDate of Birth of Student %d :->   December %d,%d\n",y++,s[i].d.day,s[i].d.year);
			break;

default : printf(" Invalid Date.\n");
			break;
}
}
printf("\n");
for(i=0;i<8;i++)
{
printf("__________");
}
printf("\n");
rank(s);
}

/*********************** End of Print Function  ******************************/


/**************************** Rank Function  *********************************/

void rank(student_record c[])
{
int i,j,tmarks;
char tname[30];

		for(j=0;j<size-1;j++)
		{
			for(i=0;i<(size-j-1);i++)
			{
				if( c[i].marks < c[i+1].marks )
				{
					strcpy(tname,c[i+1].name);
					strcpy(c[i+1].name,c[i].name);
					strcpy(c[i].name,tname);

					tmarks=c[i+1].marks;
					c[i+1].marks=c[i].marks;
					c[i].marks=tmarks;
				}
			}
		}
printf("\n\t\t\tRankwise List of Students\n\t\t\t_________________________");
printf("\n\n\n  Rank\t\tStudent Name\t\t\tTotal Marks\n\n");
for(i=0;i<size;i++)
{
	printf("    %d\t\t  %-20s\t\t    %d\n\n",i+1,c[i].name,c[i].marks);
}
}

/************************ End of Rank Function  ******************************/
