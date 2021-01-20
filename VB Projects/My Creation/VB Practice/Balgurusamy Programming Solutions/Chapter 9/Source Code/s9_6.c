#include<stdio.h>
void main()
{
int round;
double no;
printf("Enter A Number :  ");
scanf("%lf",&no);
printf("\nUpto What Decimal Place You Want To Round It Off :  ");
scanf("%d",&round);
printf("\nThe Number  %g  Rounded-off Upto  %d  Decimal Places is :  %.*f",no,round,round,no);
}
