#include<stdio.h>
void main()
{
float p,s,y,d;
printf("\nEnter The Purchase Price : ");
scanf("%f",&p);
printf("\nEnter The Annual Depreciation Value : ");
scanf("%f",&d);
printf("\nEnter The Value of Years of Service : ");
scanf("%f",&y);
s=p-(d*y);
printf("\n\nThe Salvage Value is : %g",s);
}
