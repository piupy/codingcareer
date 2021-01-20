#include<stdio.h>
void ask();
void main()
{
int ch,t;
float u=5,a=3,s;
printf("\n\nValue of Initial Velocity Set To : 5 metre/seconds ");
printf("\n\nValue of Acceleration Set To : 3 metre/second square ");
printf("\n\nEnter The Value of Time Interval ( in seconds ) : ");
scanf("%d",&t);
s=((u*t) + (1.0/2*a*t*t));
printf("\n\nThe Distance Travelled is : %g metres",s);
printf("\n\nDo You Want To Calculate The Distance Travelled Using New Values ? ");
printf("\n\n1. Yes ");
printf("\n\n2. No ");
printf("\n\nEnter Your Choice (1/2) : ");
scanf("%d",&ch);
if(ch==1)
{
ask();
}
else if(ch==2)
{
printf("\n\nProgram Ended");
}
else
{
printf("\n\nWrong Choice Entered");
}
}
void ask()
{
float u,a,t,s;
printf("\nEnter The Value of Initial Velocity : ");
scanf("%f",&u);
printf("\nEnter The Value of Acceleration : ");
scanf("%f",&a);
printf("\nEnter The Value of Time ( in seconds ) : ");
scanf("%f",&t);
s=((u*t) + (1/2.0*a*t*t));
printf("\nThe Distance Travelled is : %g",s);
}