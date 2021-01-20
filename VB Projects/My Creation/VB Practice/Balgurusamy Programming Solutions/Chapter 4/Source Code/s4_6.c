#include<stdio.h>
void main()
{
int a,b,c,i;
printf("Enter Three Integers : ");
scanf("%d %d %d",&a,&b,&c);
printf("\nIntegers Entered Are :--> ");
printf("\n\nFirst Integer : %d",a);
printf("\n\nSecond Integer : %d",b);
printf("\n\nThird Integer : %d",c);
printf("\n");
for(i=0;i<80;i++)
printf("_");
printf("\n\nIntegers Through One printf Statement With Conversion Specifier :-->  \n\nFirst Integer : %d\n\nSecond Integer : %d\n\nThird Integer : %d\n",(int)a,(int)b,(int)c);
printf("\n");
for(i=0;i<80;i++)
printf("_");
printf("\n\nIntegers Through One printf Statement Without Conversion Specifier :-->  \n\nFirst Integer : %d\n\nSecond Integer : %d\n\nThird Integer : %d\n",a,b,c);
printf("\n");
for(i=0;i<80;i++)
printf("_");
}
