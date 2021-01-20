#include<stdio.h>
#include<string.h>
void main()
{
char name1[20],name2[20];
printf("Enter First String : ");
gets(name1);
printf("\nEnter Second String : ");
gets(name2);
if(strlen(name1)<strlen(name2))
{
	if(strncmp(name1,name2,strlen(name1))>0)
	printf("\nString 1 is Greater Than The Second One");
	else if(strncmp(name1,name2,strlen(name1))<0)
	printf("\nString 2 is Greater Than The First One");
	else
	{
	printf("\nBoth Strings Are Equal");
	}
}
else if(strlen(name2)<strlen(name2))
{
	if(strncmp(name1,name2,strlen(name2))>0)
	printf("\nString 1 is Greater Than The Second One");
	else if(strncmp(name1,name2,strlen(name2))<0)
	printf("\nString 2 is Greater Than The First One");
	else
	{
	printf("\nBoth Strings Are Equal");
	}
}
else
{
	if(strncmp(name1,name2,strlen(name2))>0)
	printf("\nString 1 is Greater Than The Second One");
	else if(strncmp(name1,name2,strlen(name2))<0)
	printf("\nString 2 is Greater Than The First One");
	else
	{
	printf("\nBoth Strings Are Equal");
	}
}
}
