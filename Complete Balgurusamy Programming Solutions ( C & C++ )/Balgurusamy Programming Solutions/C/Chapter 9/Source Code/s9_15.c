#include<stdio.h>
#include<string.h>
void copy(char [],char []);
void comp(char [],char []);
void cat(char [],char []);
void main()
{
char s1[30],s2[30];
int ch;
printf("Enter First String :  ");
gets(s1);
printf("\nEnter Second String :  ");
gets(s2);
printf("\n1. Copy The Strings");
printf("\n2. Compare The Strings");
printf("\n3. Add The Strings");
printf("\n\nEnter Your Choice :  ");
scanf("%d",&ch);
switch(ch)
{
case 1 : copy(s1,s2);
			break;

case 2 : comp(s1,s2);
			break;

case 3 : cat(s1,s2);
			break;

default : printf("\nInvalid Input");
			break;
}
}

void copy(char s1[],char s2[])
{
int i;
for(i=0;i<strlen(s2);i++)
{
	s1[i]=s2[i];
}
s1[i]='\0';
printf("\nCopied String :  %s",s1);
}

void comp(char s1[],char s2[])
{
int i,flag;
if(strlen(s1)!=strlen(s2))
{
printf("\nStrings Are Unequal");
}
else
{
	for(i=0;i<strlen(s1);i++)
	{
		if(s1[i]==s2[i])
		{
		flag=1;
		continue;
		}
		else
		{
		flag=0;
		break;
		}
	}
if(flag==1)
printf("\nStrings Are Equal");
else
printf("\nStrings Are Not Equal");
}
return;
}

void cat(char s1[],char s2[])
{
int i,j;
for(i=5,j=0;i<(strlen(s1)+strlen(s2));i++,j++)
{
s1[i]=s2[j];
}
s1[i]='\0';
printf("\nConcatenated String :  %s",s1);
}
