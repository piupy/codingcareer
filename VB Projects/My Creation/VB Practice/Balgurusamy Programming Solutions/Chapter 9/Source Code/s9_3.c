#include<stdio.h>
double fact(double);
double power(double,double);
void answer();
void main()
{
answer();
}

double power(double y,double w)
{
double i,p=1;
for(i=0;i<y;i++)
p=p*w;
return(p);
}


double fact(double x)
{
double fac;
if(x==1)
return(1);
else
fac=x*fact(x-1);
return(fac);
}

void answer()
{
double i,j=1,sum=0,q,n;
printf("Enter The Value of X :  ");
scanf("%lf",&q);
printf("\nEnter The Value of N :  ");
scanf("%lf",&n);
for(i=1;i<n+2;i=i+2)
{
sum=sum+(j*(power(i,q)/fact(i)));
j=-j;
}
printf("\nAnswer :  %lf",sum);
}


