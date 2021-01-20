#include<stdio.h>
void main()
{
double x,p=1,i,j,sum=0,prev=2;
int count=1;

for(j=1;;j++)
{
	p=1;
	for(i=1;i<=j;i++)
	{
	p=(1/j)*p;
	}


printf("\n\t\tValue %d  :  %lf\n",count,p);
if((prev-p)<0.000001)
{
break;
}
else
{
prev=p;
count++;
}
sum=sum+p;
}
printf("\n\n\n\t  Accuracy Obtained At Step : %d \n\n\t  ( %lf - %lf = %lf which is less than 0.000001 )",count,prev,p,(prev-p));
printf("\n\n\t  Total Sum Till Value %d : %lf",count,sum);
}
