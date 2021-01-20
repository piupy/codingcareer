#include<stdio.h>
void main()
{
float rupee;
printf("Enter The amount in Rupees  :  ");
scanf("%f",&rupee);
printf("\nYou Entered  :  Rs. %g",rupee);
rupee=rupee*100;
printf("\n\nThe Amount in Paise is  :  Rs. %g ",rupee);
}