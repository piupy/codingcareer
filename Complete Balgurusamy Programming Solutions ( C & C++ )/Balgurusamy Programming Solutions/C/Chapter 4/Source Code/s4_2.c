#include<stdio.h>
void main()
{
float x,y,a,b;
printf("Enter First Number : ");
scanf("%f",&x);
printf("Enter Second Number : ");
scanf("%f",&y);
a=x+y;
b=x-y;
printf("\n\t%g + %g\t\t\t%g + %g",x,y,x,y,x,y,x,y);
printf("\n  (a) -----------  = %g\t  (b) -----------  = %g\t  (c) (%g + %g)(%g - %g) = %g \n",(a/b),(a/2),x,y,x,y,(a*b));
printf("\t%g - %g\t\t\t   2",x,y);


}
