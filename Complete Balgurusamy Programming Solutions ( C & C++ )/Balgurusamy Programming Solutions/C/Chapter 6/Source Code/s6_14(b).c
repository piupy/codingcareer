#include<stdio.h>
double power(double);
double fact(double);
void main()
{
double ans,z,prev=1,sum=1,sign=-1;
int count=1;
for(z=2;;z=z+2)
{
ans=(power(z)/fact(z));
ans=sign*ans;
sign=-sign;

if((prev-ans)<0.000001)
{
break;
}
else
{
prev=ans;
count++;
}
sum=sum+ans;
}
printf("\n\n\t\tThe Required Answer is : %g",sum);
printf("\n\n\t\tLoop Terminated At Step : %d",count);
}

double power(double y)
{
double i,p=1;
	for(i=1;i<=y;i++)
	{
	p=p*y;
	}
return p;
}

double fact(double z)
{
double j,q=1;
	for(j=z;j>=1;j--)
	{
	q=j*q;
	}
return q;
}
