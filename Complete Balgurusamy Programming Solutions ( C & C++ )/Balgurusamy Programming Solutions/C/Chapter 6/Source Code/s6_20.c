#include<stdio.h>
void main()
{
int a,count=0,sum=0,i;
printf("\n\t\tEnter Ten 2-Digit Integers Below : \n\n");
for(i=1;i<=10;i++)
{
printf("\n\t\tEnter Digit %d : ",i);
scanf("%d",&a);
if(!(a>=10 && a<=99))
{
printf("\n\t\tEntered Number was not a 2-Digit Number\n\n");
continue;
}
if(a<0)
{
continue;
}
else if(sum>999)
{
break;
}
else
{
sum=sum+a;
count++;
}
}
printf("\n\n\t\tNumber of Values Added : %d",count);
printf("\n\n\t\tSum of The Values Added : %d",sum);
}


