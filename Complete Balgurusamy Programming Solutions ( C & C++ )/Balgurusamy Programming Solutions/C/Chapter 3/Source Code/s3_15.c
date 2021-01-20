#include<stdio.h>
void main()
{
float a,b,c;
printf("\nEnter First Number : ");
scanf("%f",&a);
printf("\nEnter Second Number : ");
scanf("%f",&b);
printf("\nEnter Third Number : ");
scanf("%f",&c);
printf("\n\n(a) The Sum of The Numbers is : %g",(a+b+c));
printf("\n\n(b) The Average of The Numbers is : %g",(a+b+c)/3);
printf("\n\n(c) The Largest of The Numbers is : %g",(a>b)?((a>c)?a:c):((b>c)?b:c));
printf("\n\n(c) The Smallest of The Numbers is : %g",(a<b)?((a<c)?a:c):((b<c)?b:c));
}

