#include<stdio.h>
void main()
{
int a,b,c;
printf("Enter First Integer : ");
scanf("%d",&a);
printf("Enter Second Integer : ");
scanf("%d",&b);
printf("\n\t\t\t    %d",a);
printf("\n\t\t\t *  %d",b);
printf("\n\t\t\t______ ");
c=a*(b%10);
printf("\n\t%d * %d is\t   %d",(b%10),a,c);
printf("\n\t%d * %d is\t  %d*",(b/10),a,(a*(b/10)));
printf("\n\t\t\t______ ");
printf("\n\tAdd  Them\t  %d",(c+((a*(b/10))*10)));
printf("\n\t\t\t______ ");
}
