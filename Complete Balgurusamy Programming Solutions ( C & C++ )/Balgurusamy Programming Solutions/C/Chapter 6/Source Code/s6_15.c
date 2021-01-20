#include<stdio.h>
#include<math.h>
void main()
{
int n;
double p,c,d;
printf("\n\t\tEnter The Scrap Value : ");
scanf("%lf",&p);
printf("\n\t\tEnter The Original Cost : ");
scanf("%lf",&c);
printf("\n\t\tEnter The Depreciation Rate ( in % ) : ");
scanf("%lf",&d);
d=d/100;
n=(int)((log(p)-log(c))/(log(1-d)));
printf("\n\n\n\t\tUseful Life  : %d Years",n);
}