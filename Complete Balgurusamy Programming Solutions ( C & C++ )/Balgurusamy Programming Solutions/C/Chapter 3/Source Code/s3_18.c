#include<stdio.h>
#include<math.h>
void main()
{
int i,x=0,y;
for(i=0;i<80;i++)
printf("_");
printf("\n  Number\t\t\tSquare-Root\t\t\tSquare");
printf("\n");
for(i=0;i<80;i++)
printf("_");
for(i=0;i<11;i++)
{
y=pow(x,2);
printf("\n\n%d\t\t\t\t%g\t\t\t\t%d",x,sqrt(x),y);
x=x+10;
}
printf("\n");
for(i=0;i<80;i++)
printf("_");
printf("\n\t\t\t\tEND OF THE PROGRAM\n");
for(i=0;i<80;i++)
printf("_");
}
