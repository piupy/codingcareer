#include<stdio.h>
#include<string.h>
void main()
{
char name[20];
int i;
printf("Enter Your Name : ");
gets(name);
printf("\n\n");
for(i=0;i<strlen(name);i++)
{
printf("ASCII Value of Letter %3d :--->  %3d\n",i+1,name[i]);
}
}
