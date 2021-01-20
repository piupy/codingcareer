#include<stdio.h>
#include<math.h>
void main()
{
int i;
float l=10,c=0.01,r=2;
double f;
printf("\n\nValue of Inductance(L) : 10");
printf("\n\nValue of Resistance(R) : 2");
printf("\n\nValue of Capacitance(C) Starts From : 0.01");
printf("\n\n\nCapacitance\t\t\tFrequency");
for(i=0;i<10;i++)
{
f=sqrt((1/(l*c))-((r*r)/(4*c*c)));
printf("\n%g\t\t\t\t%f",c,f);
c=c+0.01;
}
}
