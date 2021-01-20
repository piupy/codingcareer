#include<stdio.h>
#include<conio.h>
void main()
{
int a1,b1,c1,d1;
float a,b,c,d,i;
clrscr();
printf("\nEnter Four Values Lying in The Range 0.0 to 20.0\n");
printf("\nEnter First Value : ");
scanf("%f",&a);
printf("Enter Second Value : ");
scanf("%f",&b);
printf("Enter Third Value : ");
scanf("%f",&c);
printf("Enter Last Value : ");
scanf("%f",&d);
printf("\nThe Values You Entered Are : ");
printf("\nFirst Value : %g",a);
printf("\nSecond Value : %g",b);
printf("\nThird Value : %g",c);
printf("\nLast Value : %g",d);
printf("\n\n");
if(a>=0 && a<=20 && b>=0 && b<=20 && c>=0 && c<=20 && d>=0 && d<=20)
{
for(i=0;i<a;i++)
{
printf("* ");
}
printf("---->   %g ( %d Stars Printed )",a,(int)a);
printf("\n");
for(i=0;i<b;i++)
{
printf("* ");
}
printf("---->   %g ( %d Stars Printed )",b,(int)b);
printf("\n");
for(i=0;i<c;i++)
{
printf("* ");
}
printf("---->   %g ( %d Stars Printed )",c,(int)c);
printf("\n");
for(i=0;i<d;i++)
{
printf("* ");
}
printf("---->   %g ( %d Stars Printed )",d,(int)d);
printf("\n\n\n");
printf("Program Executed Successfully\n\n");
}
else
{
printf("Value/Values Outside The Range Were Entered\nSo The Program Terminated\n\n");
}
getch();
}