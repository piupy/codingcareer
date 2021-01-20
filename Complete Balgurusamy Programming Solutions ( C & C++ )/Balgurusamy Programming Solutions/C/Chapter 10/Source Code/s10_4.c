#include<stdio.h>
typedef struct
{
int day;
int month;
int year;
}date;

date d;

void read();
void print(date);
void validate(date);

void main()
{
read();
}

/***************************** Read Function *********************************/

void read(void)
{
printf("Enter The Day ( in Number ) :  ");
scanf("%d",&(d.day));
printf("\nEnter The Month ( in Number )  :  ");
scanf("%d",&(d.month));
printf("\nEnter The Year ( in Number )  :  ");
scanf("%d",&(d.year));
validate(d);
}

/************************** End of Read Function *****************************/


/**************************** Validate Function *****************************/

void validate(date d)
{

	if( (d.day<1) || (d.month<1) || (d.year<1) || (d.day>31)  || (d.month>12) )
	{
	printf("\nInvalid Date.\n");
	}

	else if(d.month==2)
	{
		if( d.year % 4 != 0 )
		{
			if(d.day>28)
			{
			printf("\nInvalid Date.%d is Not A Leap Year.So February Can Have Atmost 28 Days.\n",d.year);
			}
			else
			print(d);
		}
		else
		{
			if(d.day>29)
			{
			printf("\nInvalid Date.%d is A Leap Year.So February Can Have Atmost 29 Days.\n",d.year);
			}
			else
			print(d);
		}
	}

	else if( (d.month==4) || (d.month==6) || (d.month==9) || (d.month==11) )
	{
		if(d.day>30)
		{
			switch(d.month)
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
		}
		else
		print(d);
	}

	else
	{
	print(d);
	}
}

/********************** End of Validate Function *****************************/

/*********************** Print Function **************************************/

void print(date d)
{
switch(d.month)
{
case 1 : printf("\nJanuary %d,%d\n",d.day,d.year);
			break;

case 2 : printf("\nFebruary %d,%d\n",d.day,d.year);
			break;

case 3 : printf("\nMarch %d,%d\n",d.day,d.year);
			break;

case 4 : printf("\nApril %d,%d\n",d.day,d.year);
			break;

case 5 : printf("\nMay %d,%d\n",d.day,d.year);
			break;

case 6 : printf("\nJune %d,%d\n",d.day,d.year);
			break;

case 7 : printf("\nJuly %d,%d\n",d.day,d.year);
			break;

case 8 : printf("\nAugust %d,%d\n",d.day,d.year);
			break;

case 9 : printf("\nSeptember %d,%d\n",d.day,d.year);
			break;

case 10 : printf("\nOctober %d,%d\n",d.day,d.year);
			break;

case 11 : printf("\nNovember %d,%d\n",d.day,d.year);
			break;

case 12 : printf("\nDecember %d,%d\n",d.day,d.year);
			break;

default : printf("\nInvalid Date.\n");
			break;
}
}

/*********************** End of Print Function  ******************************/
