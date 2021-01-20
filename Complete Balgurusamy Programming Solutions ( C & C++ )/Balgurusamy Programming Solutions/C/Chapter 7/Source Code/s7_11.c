#include<stdio.h>
void main()
{
char name[10];
int count=0,i=0;
printf("Enter The String : ");
scanf("%s",name);
while(name[i]!='\0')
{
count++;
i++;
}
printf("\n\nLength of String : %d Characters",count);
}