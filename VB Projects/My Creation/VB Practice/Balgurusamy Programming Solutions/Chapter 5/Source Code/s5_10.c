#include<stdio.h>
#include<math.h>
void main()
{
float a,b,c,x1,x2;
printf("\nEnter The Value of A : ");
scanf("%f",&a);
printf("\nEnter The Value of B : ");
scanf("%f",&b);
printf("\nEnter The Value of C : ");
scanf("%f",&c);
if(a==0 && b==0)
{
printf("\nNo Solution because values of A and B are Zero");
}
else if(a==0)
{
printf("\nThere is only one root of the equation which is : %g",-c/b);
}
else if((b*b-4*a*c)<0)
{
printf("\nThere is no real root because Discriminant is Negative");
}
else
{
x1=(-b+sqrt(b*b-4*a*c))/(2*a);
x2=(-b-sqrt(b*b-4*a*c))/(2*a);
printf("\nReal Roots Exist");
printf("\n\nValue of X1 : %g",x1);
printf("\n\nValue of X2 : %g",x2);
if(x1==x2)
{
printf("\nRoots are Equal");
}
}
}
