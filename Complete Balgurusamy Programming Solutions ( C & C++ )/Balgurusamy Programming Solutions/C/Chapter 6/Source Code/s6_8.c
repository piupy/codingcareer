#include<stdio.h>
void main()
{
int n=10,i,count=0,age;
printf("\n\t\tEnter 999 to Stop Reading\n");
for(i=0;i<100;i++)
{
printf("\n\tEnter Age %d : ",i+1);
scanf("%d",&age);
if(age==999)
break;
else if(!(age>=50 && age<60))
{
continue;
}
else count++;
}
printf("\n\n\tNumber of Persons in The Age Group Between 50 to 60 :  %d",count);
}
