#include<stdio.h>
#define MIN(x,y) ((x<y)?x:y)
#define PRINT(a,b,c)  printf("\n\n\t   Minimum Value =  %g",MIN(c,MIN(a,b)));
void main()
{
double a,b,c;
printf("\tEnter The Value of A :  ");
scanf("%lf",&a);
printf("\n\tEnter The Value of B :  ");
scanf("%lf",&b);
printf("\n\tEnter The Value of C :  ");
scanf("%lf",&c);
PRINT(a,b,c);
}
