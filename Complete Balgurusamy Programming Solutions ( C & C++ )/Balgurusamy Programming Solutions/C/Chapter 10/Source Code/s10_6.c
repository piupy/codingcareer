#include<stdio.h>
void print(long int []);
int validate(long int []);
void main()
{
long int x,z[3],i=0,count=0,b=10000000,no=0,a,c,d;
int check;
printf("Enter The Value of X :  ");
scanf("%ld",&x);
d=x;

while(d!=0)
{
	d=d/10;
	count++;
}

	if(count!=8)
	{
		printf("\n\nInvalid Date Entered");
	}
	else
	{
		for(i=0;i<4;i++)
		{
			a=x/b;
			c=x%b;
			no=(no*10)+a;
			b=b/10;
			x=c;
		}
		z[2]=no;

		no=0;

		for(i=0;i<2;i++)
		{
			a=x/b;
			c=x%b;
			no=(no*10)+a;
			b=b/10;
			x=c;
		}

		z[1]=no;

		no=0;

		for(i=0;i<2;i++)
		{
			a=x/b;
			c=x%b;
			no=(no*10)+a;
			b=b/10;
			x=c;
		}

		z[0]=no;
		check=validate(z);
			if(check==1)
			{
			print(z);
			}
			else
			{
			printf("\nError\n");
			}
	}
}

/**************************** Validate Function *****************************/

int validate(long int z[])
{
int flag;
	if( (z[0]<1) || (z[1]<1) || (z[2]<1) || (z[0]>31)  || (z[1]>12) )
	{
	printf("\nInvalid Date.\n");
	flag=0;
	}

	else if(z[1]==2)
	{
		if( z[2] % 4 != 0 )
		{
			if(z[0]>28)
			{
			printf("\nInvalid Date.%d is Not A Leap Year.So February Can Have Atmost 28 Days.\n",z[2]);
			flag=0;
			}
			else
			flag=1;
		}
		else
		{
			if(z[0]>29)
			{
			printf("\nInvalid Date.%d is A Leap Year.So February Can Have Atmost 29 Days.\n",z[2]);
			flag=0;
			}
			else
			flag=1;
		}
	}

	else if( (z[1]==4) || (z[1]==6) || (z[1]==9) || (z[1]==11) )
	{
		if(z[0]>30)
		{
			switch(z[1])
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


/************************ Print Function *************************************/

void print(long int z[])
{
	switch(z[1])
	{
		case 1 : printf("\nJanuary %ld,%ld\n",z[0],z[2]);
					break;

		case 2 : printf("\nFebruary %ld,%ld\n",z[0],z[2]);
					break;

		case 3 : printf("\nMarch %ld,%ld\n",z[0],z[2]);
					break;

		case 4 : printf("\nApril %ld,%ld\n",z[0],z[2]);
					break;

		case 5 : printf("\nMay %ld,%ld\n",z[0],z[2]);
					break;

		case 6 : printf("\nJune %ld,%ld\n",z[0],z[2]);
					break;

		case 7 : printf("\nJuly %ld,%ld\n",z[0],z[2]);
					break;

		case 8 : printf("\nAugust %ld,%ld\n",z[0],z[2]);
					break;

		case 9 : printf("\nSeptember %ld,%ld\n",z[0],z[2]);
					break;

		case 10 : printf("\nOctober %ld,%ld\n",z[0],z[2]);
					 break;

		case 11 : printf("\nNovember %ld,%ld\n",z[0],z[2]);
					 break;

		case 12 : printf("\nDecember %ld,%ld\n",z[0],z[2]);
					 break;

		default : printf("\nInvalid Date.\n");
					 break;
	}
}

/********************* End of Print Function ********************************/
