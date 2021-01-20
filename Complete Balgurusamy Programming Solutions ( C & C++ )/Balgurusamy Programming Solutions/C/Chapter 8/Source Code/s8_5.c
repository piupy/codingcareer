#include<stdio.h>
#include<string.h>
void main()
{
char string[30],temp;
int i,j;
printf("Enter The String :  ");
gets(string);
for(i=0;i<strlen(string)-1;i++)
{
for(j=0;j<strlen(string)-i-1;j++)
{
if(string[j]>string[j+1])
{
temp=string[j+1];
string[j+1]=string[j];
string[j]=temp;
}
}
}
printf("\nSorted String :  %s",string);
}
