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
int validate(date);
date valagain(date);
date update(date);

void main()
{
read();
}

/***************************** Read Function *********************************/

void read(void)
{
int check;
printf("Enter The Day ( in Number ) :  ");
scanf("%d",&(d.day));
printf("\nEnter The Month ( in Number )  :  ");
scanf("%d",&(d.month));
printf("\nEnter The Year ( in Number )  :  ");
scanf("%d",&(d.year));
check=validate(d);
	if(check==0)
	{
		printf("\nError\n");
	}
	else
	{
		d=update(d);
		print(d);
	}
}

/************************** End of Read Function *****************************/

/**************************** Validate Function *****************************/

int validate(date d)
{
int flag;
	if( (d.day<1) || (d.month<1) || (d.year<1) || (d.day>31)  || (d.month>12) )
	{
	printf("\nInvalid Date.\n");
	flag=0;
	}

	else if(d.month==2)
	{
		if( d.year % 4 != 0 )
		{
			if(d.day>28)
			{
			printf("\nInvalid Date.%d is Not A Leap Year.So February Can Have Atmost 28 Days.\n",d.year);
			flag=0;
			}
			else
			flag=1;
		}
		else
		{
			if(d.day>29)
			{
			printf("\nInvalid Date.%d is A Leap Year.So February Can Have Atmost 29 Days.\n",d.year);
			flag=0;
			}
			else
			flag=1;
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
		flag=0;
		}
		else
		flag=1;
	}

	else
	{
	flag=1;
	}
return(flag);
}

/********************** End of Validate Function *****************************/

/**************************** Update Function *******************************/

date update(date y)
{
int day,month,year,ch;
printf("\n\n\tI Want To Increment The Date By :\n\n");
printf("\t1. Years\n");
printf("\t2. Months\n");
printf("\t3. Days\n");
printf("\n\tEnter Your Choice :  ");
scanf("%d",&ch);
switch(ch)
{
case 1 :		printf("\n\tEnter The Number of Years :  ");
				scanf("%d",&year);
				y.year=y.year+year;
				break;

case 2 :		printf("\n\tEnter The Number of Months :  ");
				scanf("%d",&month);
				y.month=y.month+month;
					if(y.month>12)
					{
					y.year=y.year+(y.month)/12;
					y.month=(y.month)%12;
					}
				y=valagain(y);
				break;

case 3 :		printf("\n\tEnter The Number of Days :  ");
				scanf("%d",&day);
				y.day=y.day+day;
				if(y.day>31)
				{
				y.month=y.month+(y.day)/31;
				y.day=y.day%31;
					if(y.month>12)
					{
					y.year=y.year+(y.month)/12;
					y.month=(y.month)%12;
					}
				}
				y=valagain(y);
				break;

default :	printf("\n\n\tInvalid Input.Time Could Not Be Updated\n");
				break;

}
return(y);
}

/************************* End of Update Function ****************************/

/*************************** Valagain Function *******************************/

date valagain(date d)
{
	if(d.month==2)
	{
		if( d.year % 4 != 0 )
		{
			if(d.day>28)
			{
				d.month=d.month+(d.day)/28;
				d.day=d.day%28;
			}
		}
		else
		{
			if(d.day>29)
			{
				d.month=d.month+(d.day)/29;
				d.day=d.day%29;
			}
		}
	}

	else if( (d.month==4) || (d.month==6) || (d.month==9) || (d.month==11) )
	{
		if(d.day>30)
		{
			d.month=d.month+(d.day)/30;
			d.day=d.day%30;
		}
	}
return(d);
}

/************************* End of Valagain Function **************************/

/***************************** Print Function ********************************/

void print(date d)
{
switch(d.month)
{
case 1 : printf("\n\tJanuary %d,%d\n",d.day,d.year);
			break;

case 2 : printf("\n\tFebruary %d,%d\n",d.day,d.year);
			break;

case 3 : printf("\n\tMarch %d,%d\n",d.day,d.year);
			break;

case 4 : printf("\n\tApril %d,%d\n",d.day,d.year);
			break;

case 5 : printf("\n\tMay %d,%d\n",d.day,d.year);
			break;

case 6 : printf("\n\tJune %d,%d\n",d.day,d.year);
			break;

case 7 : printf("\n\tJuly %d,%d\n",d.day,d.year);
			break;

case 8 : printf("\n\tAugust %d,%d\n",d.day,d.year);
			break;

case 9 : printf("\n\tSeptember %d,%d\n",d.day,d.year);
			break;

case 10 : printf("\n\tOctober %d,%d\n",d.day,d.year);
			break;

case 11 : printf("\n\tNovember %d,%d\n",d.day,d.year);
			break;

case 12 : printf("\n\tDecember %d,%d\n",d.day,d.year);
			break;

default : printf("\n\tInvalid Date.\n");
			break;
}
}

/*********************** End of Print Function  ******************************/
