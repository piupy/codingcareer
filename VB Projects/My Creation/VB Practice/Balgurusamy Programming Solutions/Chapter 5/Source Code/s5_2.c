#include<stdio.h>
void main()
{
int i,count=0,sum=0;
printf("\nHere is The list of All Numbers in the Range 100 to 200 which are divisible by 7\n\n");
for(i=105;i<200;i=i+7)
{
printf("\tNumber  %d --->  %d",(count+1),i);
printf("\n");
sum=sum+i;
count++;
}
printf("\n\nTotal Values Printed : %d",count);
printf("\n\nSum of All The Values : %d",sum);
}
