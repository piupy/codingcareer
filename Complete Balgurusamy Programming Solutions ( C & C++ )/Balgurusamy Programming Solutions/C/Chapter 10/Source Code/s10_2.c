#include<stdio.h>
struct time_struct
{
int hour;
int minute;
int second;
}t;

void read();
void write(struct time_struct);

void main()
{
read();
}

void read()
{
printf("\n\t\tHour :  ");
scanf("%d",&t.hour);
printf("\n\t\tMinute :  ");
scanf("%d",&t.minute);
printf("\n\t\tSeconds :  ");
scanf("%d",&t.second);
write(t);
}

void write(struct time_struct x)
{
printf("\n\n\n\t\tTime :-->  %d:%d:%d",x.hour,x.minute,x.second);
}