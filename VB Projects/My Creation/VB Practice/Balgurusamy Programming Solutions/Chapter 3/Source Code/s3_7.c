#include<stdio.h>
void digit0();
void digit1();
void digit2();
void digit3();
void digit4();
void digit5();
void digit6();
long int large(long int);
long int small(long int);
void main()
{
int ch;
printf("How Many Digits You Want in Your Number After The Decimal ? \n");
printf("1. 1-Digit\n");
printf("2. 2-Digits\n");
printf("3. 3-Digits\n");
printf("4. 4-Digits\n");
printf("5. 5-Digits\n");
printf("6. 6-Digits\n");
printf("7. I Want To Enter an Integer\n\n");
scanf("%d",&ch);
printf("\nOK\n");
switch(ch)
{
case 1 : {
				digit1();
				break;
				}

case 2 : {
				digit2();
				break;
				}

case 3 : {
				digit3();
				break;
				}

case 4 : {
				digit4();
				break;
				}


case 5 : {
				digit5();
				break;
				}

case 6 : {
				digit6();
				break;
				}

case 7 : {
				digit0();
				break;
				}

default : {
				printf("\nWrong Choice Entered");
				break;
				}
}
}

void digit0()
{
long int l,x,s;
printf("\nEnter An Integer : ");
scanf("%ld",&x);
l=large(x);
s=small(x);
printf("\n Smallest Value\t\tGiven Number\t\tLargest Value");
printf("\n\n %ld\t\t\t%ld\t\t\t%ld",s,x,l);
}

void digit1()
{
float x;
long int y,l,s;
printf("\nEnter A Number Having 1-Digit After The Decimal : ");
scanf("%f",&x);
y=(long int)(x*10);
l=large(y);
s=small(y);
printf("\n Smallest Value\t\tGiven Number\t\tLargest Value");
printf("\n\n %ld\t\t\t%g\t\t\t%ld",s,x,l+1);
}

void digit2()
{
float x;
long int y,l,s;
printf("\nEnter A Number Having 2-Digits After The Decimal : ");
scanf("%f",&x);
y=(long int)(x*100);
l=large(y);
s=small(y);
printf("\n Smallest Value\t\tGiven Number\t\tLargest Value");
printf("\n\n %ld\t\t\t%g\t\t\t%ld",s,x,l);
}

void digit3()
{
float x;
long int y,l,s;
printf("\nEnter A Number Having 3-Digits After The Decimal : ");
scanf("%f",&x);
y=(long int)(x*1000);
l=large(y);
s=small(y);
printf("\n Smallest Value\t\tGiven Number\t\tLargest Value");
printf("\n\n %ld\t\t\t%g\t\t\t%ld",s,x,l);
}

void digit4()
{
float x;
long int y,l,s;
printf("\nEnter A Number Having 4-Digits After The Decimal : ");
scanf("%f",&x);
y=(long int)(x*10000);
l=large(y);
s=small(y);
printf("\n Smallest Value\t\tGiven Number\t\tLargest Value");
printf("\n\n %ld\t\t\t%g\t\t\t%ld",s,x,l);
}

void digit5()
{
float x;
long int y,l,s;
printf("\nEnter A Number Having 5-Digits After The Decimal : ");
scanf("%f",&x);
y=(long int)(x*100000);
l=large(y);
s=small(y);
printf("\n Smallest Value\t\tGiven Number\t\tLargest Value");
printf("\n\n %ld\t\t\t%g\t\t\t%ld",s,x,l);
}

void digit6()
{
float x;
long int y,l,s;
printf("\nEnter A Number Having 6-Digits After The Decimal : ");
scanf("%f",&x);
y=(long int)(x*1000000);
l=large(y);
s=small(y);
printf("\n Smallest Value\t\tGiven Number\t\tLargest Value");
printf("\n\n %ld\t\t\t%g\t\t\t%ld",s,x,l);
}

long int large(long int a)
{
long int b,c,max;
max=a-((a/10)*10);
while(a!=0)
{
b=a/10;
c=a-((a/10)*10);
if(c>max)
{
max=c;
}
a=b;
}
return(max);
}

long int small(long int a)
{
long int b,c,min;
min=a-((a/10)*10);
while(a!=0)
{
b=a/10;
c=a-((a/10)*10);
if(c<min)
{
min=c;
}
a=b;
}
return(min);
}









