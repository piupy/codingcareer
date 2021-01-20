#include<stdio.h>
#include<string.h>
#include<ctype.h>
void convert(char []);
void main()
{
char name[20];
int i;
printf("Enter The String :  ");
gets(name);
convert(name);
}

void convert(char name[])
{
int i;
for(i=0;i<strlen(name);i++)
{
name[i]=toupper(name[i]);
}
printf("\nThe String in Uppercase :  %s",name);
}
