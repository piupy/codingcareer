#include<stdio.h>
int fact(int);
void main()
{
int i,count=1;
double ans,prev=2,sum=0;

for(i=1;;i++)
{
ans=1.0/(fact(i));
printf("\n\t  Value %d : %lf\n",count,ans);
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

printf("\n\n\n\t  Loop Terminated At Step : %d\n\n\t  ( %lf %lf = %lf which is less than 0.000001 )",count,prev,ans,(prev-ans));
printf("\n\n\t  The Sum Uptill %d Values : %lf",count,sum);
}

int fact(int z)
{
int j,q=1;
	for(j=z;j>=1;j--)
	{
	q=j*q;
	}
return q;
}
