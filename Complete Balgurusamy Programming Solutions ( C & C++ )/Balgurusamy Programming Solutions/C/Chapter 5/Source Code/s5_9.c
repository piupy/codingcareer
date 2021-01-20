#include<stdio.h>
void nestedif();
void elseif();
void conditional();
void main()
{
int ch;
printf("\n\nEnter The Method From Which You Want To Do \n");
printf("1. nested if \n");
printf("2. else if \n");
printf("3. Conditional Operator ( ? : ) \n");
printf("\n\nEnter Your Choice : ");
scanf("%d",&ch);
switch(ch)
{
case 1 : nestedif();
			break;

case 2 : elseif();
			break;

case 3 : conditional();
			break;

default : printf("\n\nInvalid Input");
			break;
}
}

void nestedif()
{
int x,y;
printf("\n\nEnter The Value of X : ");
scanf("%d",&x);
if(x==0)
{
y=0;
printf("\n\nValue of Y : %d",y);
}
else
{
	if(x<0)
	{
	y=-1;
	printf("\n\nValue of Y : %d ( means X is negative )",y);
	}
	else
	{
		if(x>0)
		{
		y=1;
		printf("\n\nValue of Y : %d ( means X is positive )",y);
		}
		else
		{
		printf("\n\nInvalid Input");
		}
	}
}
}

void elseif()
{
int x,y;
printf("\n\nEnter The Value of X : ");
scanf("%d",&x);
if(x==0)
{
y=0;
printf("\n\nValue of Y : %d",y);
}
else if(x>0)
{
y=1;
printf("\n\nValue of Y : %d ( means X is positive )",y);
}
else if(x<0)
{
y=-1;
printf("\n\nValue of Y : %d ( means X is negative )",y);
}
else
{
printf("\n\nInvalid Input");
}
}

void conditional()
{
int x,y;
printf("\n\nEnter The Value of X : ");
scanf("%d",&x);
y=((x!=0)?((x<0)?-1:1):0);
if(y==0)
{
printf("\n\nValue of Y : %d",y);
}
else if(y==-1)
{
printf("\n\nValue of Y : %d ( means X is negative )",y);
}
else if(y==1)
{
printf("\n\nValue of Y : %d ( means X is positive )",y);
}
}
