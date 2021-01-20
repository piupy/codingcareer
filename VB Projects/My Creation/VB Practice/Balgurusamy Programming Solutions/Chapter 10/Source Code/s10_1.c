#include<stdio.h>
struct time_struct
{
int hour;
int minute;
int second;
}t;

void main()
{
printf("\n\t\tHour :  ");
scanf("%d",&t.hour);
printf("\n\t\tMinute :  ");
scanf("%d",&t.minute);
printf("\n\t\tSeconds :  ");
scanf("%d",&t.second);
printf("\n\n\n\tTime :-->  %d:%d:%d",t.hour,t.minute,t.second);
}

