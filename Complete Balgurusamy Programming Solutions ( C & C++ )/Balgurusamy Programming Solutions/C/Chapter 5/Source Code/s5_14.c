#include<stdio.h>
void main()
{
int i,num,flag;
printf("\nEnter A Number : ");
scanf("%d",&num);
if(num<0)
{
printf("\n\nNegative Numbers Are Not Allowed");
}
else if(num==0 || num==1)
{
printf("\n\n0 and 1 Are Not Allowed");
}
else if(num>0)
{
	for(i=2;i<num;i++)
	{
		if(num%i==0)
		{
		flag=0;
		break;
		}
		else
		{
		flag=1;
		}
	}
if(flag==0)
{
printf("\nNumber is Composite");
}
else if(flag==1)
{
printf("\nNumber is Prime");
}
}
else
{
printf("\nPlease Enter A Numeral");
}
}