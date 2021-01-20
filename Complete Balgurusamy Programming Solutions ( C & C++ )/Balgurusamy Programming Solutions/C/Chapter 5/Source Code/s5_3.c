#include<stdio.h>
void main()
{
float a,b,c,d,m,n,x1,x2;
printf("\nEnter The Value of A : ");        // Take A = 5 //
scanf("%f",&a);
printf("\nEnter The Value of B : ");        // Take B = 4 //
scanf("%f",&b);
printf("\nEnter The Value of C : ");        // Take C = 5 //
scanf("%f",&c);
printf("\nEnter The Value of D : ");        // Take D = 6 //
scanf("%f",&d);
printf("\nEnter The Value of M : ");        // Take M = 10 //
scanf("%f",&m);
printf("\nEnter The Value of N : ");        // Take N = 9 //
scanf("%f",&n);
if(((a*d)-(c*b))==0)
{
printf("\n\nDivision is Not Possible because Denominator is Zero");
}
else
{
x1=((m*d)-(b*n))/((a*d)-(c*b));
x2=((n*a)-(m*c))/((a*d)-(c*b));
printf("\nThe Equations are of The Form :-->\n");
printf("\n\t\t%gx1 + %gx2 = %g",a,b,m);
printf("\n\n\t\t%gx1 + %gx2 = %g",c,d,n);
printf("\n\nValue of X1 : %g",x1);
printf("\n\nValue of X2 : %g",x2);
}
}
