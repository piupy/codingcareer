#include<stdio.h>
void main()
{
int marks,range81=0,range61=0,range41=0,range0=0,total=0,above80=0,above40=0,above60=0,below40=0;
static int m=1;
printf("Enter all the Marks in a line ( Enter -1 to Terminate The Process Anytime ) : \n\n");
input:
scanf("%d",&marks);
if(marks==-1)
goto output;
if(marks>80 && marks<101)
{
above80++;
above60++;
above40++;
total=total+marks;
}
else if(marks>60 && marks<101)
{
above60++;
above40++;
total=total+marks;
}
else if(marks>40 && marks<101)
{
above40++;
total=total+marks;
}
else if(marks<=40 && marks>=0)
{
below40++;
total=total+marks;
}
if(marks>=0 && marks<=100)
{
printf("\n Marks %d --> %d\n",m,marks);
m++;
}
if(marks>=81 && marks<=100)
range81++;
if(marks>=61 && marks<=80)
range61++;
if(marks>=41 && marks<=60)
range41++;
if(marks>=0 && marks<=40)
range0++;
goto input;
output:
printf("\nTotal Marks : %d",total);
printf("\nStudents With Marks Below or Equal To 40 : %d",below40);
printf("\nStudents With Marks Above 40 : %d",above40);
printf("\nStudents With Marks Above 60 : %d",above60);
printf("\nStudents With Marks Above 80 : %d",above80);
printf("\nStudents With Marks in The Range 81 to 100 : %d",range81);
printf("\nStudents With Marks in The Range 61 to 80 : %d",range61);
printf("\nStudents With Marks in The Range 41 to 60 : %d",range41);
printf("\nStudents With Marks in The Range 0 to 40 : %d",range0);
}
