#include<stdio.h>
void main()
{
float rate;
int n,i;
char code[20];
printf("Enter Your Customer Code : ");
scanf("%s",code);
printf("\nEnter The Number of Calls You Made : ");
scanf("%d",&n);
printf("\n\n\n\n");
if(n<=100)
{
for(i=0;i<160;i++)
printf("_");
printf("\n\nCustomer Code : %s",code);
printf("\n\nNumber of Calls : %d",n);
printf("\n\nYour Bill : Rs. 250");
printf("\n\nYou Can Do Your Payment Through Cash As Well As Through Cheque");
printf("\n");
for(i=0;i<160;i++)
printf("_");
}
else
{
for(i=0;i<160;i++)
printf("_");
rate=250+((n-100)*1.25);
printf("\n\nCustomer Code : %s",code);
printf("\n\nNumber of Calls : %d",n);
printf("\n\nYour Bill : Rs. %g",rate);
printf("\n\nYou Can Do Your Payment Through Cash As Well As Through Cheque");
printf("\n");
for(i=0;i<160;i++)
printf("_");
}
}
