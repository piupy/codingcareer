#include<stdio.h>
int check(int);
void main()
{
int i,flag,num,z;
printf("\nEnter A Number : ");
scanf("%d",&num);
z=check(num);
if(z==0)
{
printf("\nNumber is Composite");
}
else if(z==1)
{
printf("\nNumber is Prime");
}
else
{
printf("\nError in Input");
}
}

int check(int num)
{
int flag,i;
if(num<0)
{
printf("\n\nNegative Numbers Are Not Allowed");
return(2);
}
else if(num==0 || num==1)
{
printf("\n\n0 and 1 Are Not Allowed");
return(2);
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
return(flag);
}
}
