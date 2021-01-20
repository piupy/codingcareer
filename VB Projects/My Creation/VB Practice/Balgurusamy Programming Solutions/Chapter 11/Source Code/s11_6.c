#include<stdio.h>
char *day_name(int n);
void main()
{
int no;
char *p;
printf("Enter The Day Number :  ");
scanf("%d",&no);
p=day_name(no);
	if( p==NULL )
	{
		printf("\n\nError");
	}
	else
	{
		printf("\n\nDay : %s",p);
	}
}

char *day_name(int n)
{
char days[7][10]={"Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"};
	switch(n)
	{
		case 1 : return(*days);

		case 2 : return(*(days+1));

		case 3 : return(*(days+2));

		case 4 : return(*(days+3));

		case 5 : return(*(days+4));

		case 6 : return(*(days+5));

		case 7 : return(*(days+6));

		default : printf("\n\nInvalid Input");
					 return(NULL);
	}
}
