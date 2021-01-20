#include<stdio.h>
typedef struct
{
int day;
int month;
int year;
}date;

date d,d1;

void read();
int validate(date);
int diff(date,date);

void main()
{
read();
}

/***************************** Read Function *********************************/

void read(void)
{
int check,check1,result;
printf("\n\t\tFor First Date\n\n");
printf("Enter The Day ( in Number ) :  ");
scanf("%d",&(d.day));
printf("\nEnter The Month ( in Number )  :  ");
scanf("%d",&(d.month));
printf("\nEnter The Year ( in Number )  :  ");
scanf("%d",&(d.year));
check=validate(d);

if(check==1)
{
	printf("\n\t\tFor Second Date\n\n");
	printf("Enter The Day ( in Number ) :  ");
	scanf("%d",&(d1.day));
	printf("\nEnter The Month ( in Number )  :  ");
	scanf("%d",&(d1.month));
	printf("\nEnter The Year ( in Number )  :  ");
	scanf("%d",&(d1.year));
	check1=validate(d1);
	if(check1==1)
	{
		result=diff(d,d1);
		if(result==2)
		{
			printf("\nDate1 is Equal To Date2\n");
		}
		else if(result==1)
		{
			printf("\nDate1 is Earlier Than Date2\n");
		}
		else
		{
			printf("\nDate1 is Later Date\n");
		}
	}
	else
	{
		printf("\nInvalid Date\n");
	}
}
else
{
	printf("\nInvalid Date\n");
}
}

/************************** End of Read Function *****************************/


/**************************** Validate Function *****************************/

int validate(date d)
{
int flag;

	if( (d.day<1) || (d.month<1) || (d.year<1) || (d.day>31)  || (d.month>12) )
	{
	flag=0;
	}

	else if(d.month==2)
	{
		if( d.year % 4 != 0 )
		{
			if(d.day>28)
			{
			printf("\n%d is Not A Leap Year.So February Can Have Atmost 28 Days.\n",d.year);
			flag=0;
			}
			else
			flag=1;
		}
		else
		{
			if(d.day>29)
			{
			printf("\n%d is A Leap Year.So February Can Have Atmost 29 Days.\n",d.year);
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
				case 4 :  printf("\nApril Has Atmost 30 Days Only\n");
							 flag=0;
							 break;

				case 6 :  printf("\nJune Has Atmost 30 Days Only\n");
							 flag=0;
							 break;

				case 9 :  printf("\nSeptember Has Atmost 30 Days Only\n");
							 flag=0;
							 break;

				case 11 : printf("\nNovember Has Atmost 30 Days Only\n");
							 flag=0;
							 break;
			}
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

/************************* Diff Function ************************************/

int diff(date d,date d1)
{
int flag;
	if(d.year<=d1.year)
	{
		if(d.month<=d1.month)
		{
			if(d.day<d1.day)
			{
				flag=1;
			}
			else if(d.day==d1.day)
			{
				flag=2;
			}
			else
			{
				flag=0;
			}
		}
		else
		{
		flag=0;
		}
	}
	else
	{
	flag=0;
	}
return(flag);
}

/********************** End of Diff Function ********************************/
