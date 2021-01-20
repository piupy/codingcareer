#include<stdio.h>
#define PRINT_VALUE(s1,s2) printf(#s1" = %g\t\t"#s2" = %g",s1,s2);
void main()
{
double a,b;
printf("\tEnter The Value of A :  ");
scanf("%lf",&a);
printf("\n\tEnter The Value of B :  ");
scanf("%lf",&b);
printf("\n\n\t");
PRINT_VALUE(a,b);
}

