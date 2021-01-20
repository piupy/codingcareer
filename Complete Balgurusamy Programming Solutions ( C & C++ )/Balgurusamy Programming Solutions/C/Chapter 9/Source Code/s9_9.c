#include<stdio.h>
double add(double,double);
double sub(double,double);
double mul(double,double);
double div(double,double);
void display(double);
void read(void);
void calc(double,double);
void main()
{
read();
}

void read(void)
{
double first,second;
printf("Enter First Number :  ");
scanf("%lf",&first);
printf("\nEnter Second Number :  ");
scanf("%lf",&second);
calc(first,second);
}

void calc(double first,double second)
{
int ch;
double ans;
printf("\n1. Addition");
printf("\n2. Subtraction");
printf("\n3. Multiplication");
printf("\n4. Division");
printf("\n\nEnter Your Choice :  ");
scanf("%d",&ch);
switch(ch)
{
case 1 : ans = add(first,second);
			display(ans);
			break;

case 2 : ans = sub(first,second);
			display(ans);
			break;

case 3 : ans = mul(first,second);
			display(ans);
			break;

case 4 : ans = div(first,second);
			display(ans);
			break;

default : printf("\nInvalid Input");
			break;

}
}

double add(double first,double second)
{
return(first+second);
}

double sub(double first,double second)
{
return(first-second);
}

double mul(double first,double second)
{
return(first*second);
}

double div(double first,double second)
{
return(first/second);
}

void display(double ans)
{
printf("\nAnswer :  %g",ans);
return;
}