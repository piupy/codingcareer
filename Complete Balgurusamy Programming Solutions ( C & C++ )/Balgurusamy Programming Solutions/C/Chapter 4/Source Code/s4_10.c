#include<stdio.h>
void main()
{
char name1[10],name2[10];
long int code1,code2;
int i;
float price1,price2;
printf("\nEnter Name of Product 1 : ");
scanf("%s",name1);
printf("\nEnter Code of Product 1 : ");
scanf("%ld",&code1);
printf("\nEnter Price of Product 1 : ");
scanf("%f",&price1);
printf("\nEnter Name of Product 2 : ");
scanf("%s",name2);
printf("\nEnter Code of Product 2 : ");
scanf("%ld",&code2);
printf("\nEnter Price of Product 2 : ");
scanf("%f",&price2);
printf("\n");
for(i=0;i<80;i++)
printf("_");
printf("\n\tName\t\tCode\t\tPrice");
printf("\n");
for(i=0;i<80;i++)
printf("_");
printf("\n\t%-s\t\t%-ld\t\t%.2f",name1,code1,price1);
printf("\n\n\t%-s\t\t%-ld\t\t%.2f",name2,code2,price2);
printf("\n");
for(i=0;i<80;i++)
printf("_");


}