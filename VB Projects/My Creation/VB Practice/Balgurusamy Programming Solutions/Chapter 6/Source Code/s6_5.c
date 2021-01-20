#include<stdio.h>
void main()
{
long int x,y,i,p=1;
printf("\n\n\t\tEnter The Number : ");
scanf("%ld",&x);
printf("\n\t\tEnter The Power : ");
scanf("%ld",&y);
for(i=1;i<=y;i++)
p=p*x;
printf("\n\n\t\t%ld  to the Power  %ld  =  %ld",x,y,p);
}
