#include<stdio.h>
void main()
{char name1[30],name2[30];
int i;
printf("\n");
for(i=0;i<75;i++)
printf("-");
printf("\n");
for(i=0;i<75;i++)
printf("-");
printf("\nEnter Your Name : ");
gets(name1);
printf("\nEnter Your Address : ");
scanf("%[^\n]",name2);
printf("\n");
for(i=0;i<75;i++)
printf("-");
printf("\n");
for(i=0;i<75;i++)
printf("-");
printf("\n\n\n\t\t\t\tHere Are Your Details\n\n\n");
printf("\n");
for(i=0;i<75;i++)
printf("-");
printf("\n");
for(i=0;i<75;i++)
printf("-");
printf("\n\nYour Name is : %s",name1);
printf("\n\nYour Address is : ");
puts(name2);
printf("\n");
for(i=0;i<75;i++)
printf("-");
printf("\n");
for(i=0;i<75;i++)
printf("-");
}
