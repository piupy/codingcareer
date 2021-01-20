#include<stdio.h>
#define meter 100
void main()
{
char name[20];
int units,i;
float charges;
printf("\nEnter Your Name : ");
gets(name);
printf("\nEnter Number of Units Consumed : ");
scanf("%d",&units);
if(units<=200)
{
charges=meter+(units*0.8);
}
else if(units>200 && units<=300)
{
charges=meter+(units*0.9);
}
else if(units>300)
{
charges=meter+units;
}
if(charges>400)
{
charges=charges+charges*0.15;
printf("\n\nTotal Amount is More Than Rs. 400\nSo An Additional Surcharge of 15% Has Been Charged");
printf("\n");
for(i=0;i<10;i++)
printf("________");
printf("\nCustomer Name : %s",name);
printf("\n\nUnits Consumed : %d\n\nMeter Charges : Rs. 100\n\nNet Amount = Rs. %g",units,charges);
printf("\n");
for(i=0;i<10;i++)
printf("________");
}
else
{
printf("\n");
for(i=0;i<10;i++)
printf("________");
printf("\nCustomer Name : %s",name);
printf("\n\nUnits Consumed : %d\n\nMeter Charges : Rs. 100\n\nNet Amount = Rs. %g",units,charges);
printf("\n");
for(i=0;i<10;i++)
printf("________");
}
}
