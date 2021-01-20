#include<stdio.h>
void leap(int);
void main()
{
int year;
printf("Enter The Year :  ");
scanf("%d",&year);
leap(year);
}

void leap(int year)
{
if(year%4==0)
printf("\n%d is a Leap Year",year);
else
printf("\n%d is a Ordinary Year",year);
return;
}
