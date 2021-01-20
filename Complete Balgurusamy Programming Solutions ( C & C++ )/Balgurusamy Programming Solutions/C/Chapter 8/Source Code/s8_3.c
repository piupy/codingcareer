#include<stdio.h>
#include<string.h>
void main()
{
char name[30];
int m,n,i;
printf("Enter A String :  ");
gets(name);
printf("\nHow Many Characters You Want To Extract :  ");
scanf("%d",&m);
printf("\nFrom Which Character ( Enter The Position of Character ) :  ");
scanf("%d",&n);
printf("\nExtracted String is :   ");
for(i=n-1;i<=(m+n-2);i++)
{
printf("%c",name[i]);
}
}