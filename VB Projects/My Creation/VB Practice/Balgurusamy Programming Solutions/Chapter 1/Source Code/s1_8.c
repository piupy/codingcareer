#include<stdio.h>
#include<conio.h>
#include<math.h>
void cal(float,float,float);
void main()
{
clrscr();
printf("\nValue of x is given by the formula : x = ( a / ( b - c ) )");
printf("\n\n\nIn First Case :-> a = 250 , b = 85 , c = 25");
cal(250,85,25);
printf("\n\n\nIn Second Case :-> a = 300 , b = 70 , c = 70");
cal(300,70,70);
getch();
}
void cal(float p,float q,float r)
{ float x;
if((q-r)==0)
{
printf("\n\nDivision Not Possible \n\nBecause The Denominator in the formula : x = ( a / ( b - c ) ) becomes Zero");
}
else {
x=(p/(q-r));
printf("\n\nThe Answer is : %g",x);
}
}





