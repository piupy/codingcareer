#include<stdio.h>
#include<math.h>
void calc(float *,float *,float *,float *,float *);
int flag=0;
void main()
{
float a,b,c,root1,root2;
calc(&a,&b,&c,&root1,&root2);
	if(flag==1)
	{
		printf("\n\n\tValue of X1 : %g",root1);
		printf("\n\n\tValue of X2 : %g",root2);
	}
}

void calc(float *x,float *y,float *z,float *x1,float *x2)
{
printf("\nEnter The Value of A : ");
scanf("%f",x);
printf("\nEnter The Value of B : ");
scanf("%f",y);
printf("\nEnter The Value of C : ");
scanf("%f",z);
	if(*x==0 && *y==0)
	{
		printf("\n\tNo Solution because values of A and B are Zero");
	}
	else if(*x==0)
	{
		printf("\n\tThere is only one root of the equation which is : %g",-*z/ *y);
	}
	else if((*y * *y - 4 * *x * *z)<0)
	{
		printf("\n\tThere is no real root because Discriminant is Negative");
	}
	else
	{
		*x1=(-*y+sqrt(*y * *y - 4 * *x * *z))/(2* *x);
		*x2=(-*y-sqrt(*y * *y - 4 * *x * *z))/(2* *x);
		printf("\n\tReal Roots Exist");
		flag=1;
	}
}
