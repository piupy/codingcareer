#include<stdio.h>
#include<math.h>
#define pi 3.14
void usingswitch();
void usingifelse();
void main()
{
int ch;
printf("From Which Method You Want To Use : \n\n1. If Else\n2. Switch\n\nEnter Your Choice : ");
scanf("%d",&ch);
switch(ch)
{
case 1 : usingifelse();
			break;

case 2 : usingswitch();
			break;

default : printf("\n\nInvalid Input");
			break;
}
}

void usingifelse()
{
double x,s,c,t;
int T;
printf("\nEnter The Measure of Angle ( in Degree ) : ");
scanf("%lf",&x);
printf("\nYou Entered %g Degree",x);
s=sin((pi/180)*x);
c=cos((pi/180)*x);
t=tan((pi/180)*x);
printf("\n\n\tHere is The List of Different Trigonometric Functions");
printf("\n\n\tEnter 1 to Find Sine(sin) of The Given Angle");
printf("\n\n\tEnter 2 to Find Cosine(cos) of The Given Angle");
printf("\n\n\tEnter 3 to Find Tangent(tan) of The Given Angle");
printf("\n\n\tEnter 4 to Find All");
printf("\n\n\tEnter Your Choice : ");
scanf("%d",&T);
if(T==1)
{
printf("\n\tSin(%g) = %lf",x,s);
}
else if(T==2)
{
printf("\n\tCos(%g) = %lf",x,c);
}
else if(T==3)
{
printf("\n\tTan(%g) = %lf",x,t);
}
else if(T==4)
{
printf("\n\tSin(%g) = %lf",x,s);
printf("\n\tCos(%g) = %lf",x,c);
printf("\n\tTan(%g) = %lf",x,t);
}
else
{
printf("\n\nInvalid Input");
}
}

void usingswitch()
{
double x,s,c,t;
int T;
printf("\nEnter The Measure of Angle ( in Degree ) : ");
scanf("%lf",&x);
printf("\nYou Entered %g Degree",x);
s=sin((pi/180)*x);
c=cos((pi/180)*x);
t=tan((pi/180)*x);
printf("\n\n\tHere is The List of Different Trigonometric Functions");
printf("\n\n\tEnter 1 to Find Sine(sin) of The Given Angle");
printf("\n\n\tEnter 2 to Find Cosine(cos) of The Given Angle");
printf("\n\n\tEnter 3 to Find Tangent(tan) of The Given Angle");
printf("\n\n\tEnter 4 to Find All");
printf("\n\n\tEnter Your Choice : ");
scanf("%d",&T);
switch(T)
{
case 1 : printf("\n\tSin(%g) = %lf",x,s);
			  break;

case 2 : printf("\n\tCos(%g) = %lf",x,c);
			  break;

case 3 : printf("\n\tTan(%g) = %lf",x,t);
			  break;

case 4 : printf("\n\tSin(%g) = %lf",x,s);
			printf("\n\tCos(%g) = %lf",x,c);
			printf("\n\tTan(%g) = %lf",x,t);
			break;

default : printf("\n\n\tInvalid Input");
			 break;
}
}
