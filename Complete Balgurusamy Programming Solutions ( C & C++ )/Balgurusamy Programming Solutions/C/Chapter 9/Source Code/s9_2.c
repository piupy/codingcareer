#include<stdio.h>
void space(int);
void main()
{
int n;
char name[20],sname[20];
printf("Enter Your First Name :  ");
gets(name);
printf("\nEnter Your Last Name :  ");
gets(sname);
printf("\nEnter The Number of Spaces You Want in Your Name :  ");
scanf("%d",&n);
printf("\nYour Name is :  %s",name);
space(n);
printf("%s",sname);
}
void space(int x)
{
int i;
for(i=0;i<x;i++)
printf(" ");
}

