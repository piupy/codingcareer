#include<stdio.h>
#include<string.h>
void locate(char [],char [],int);
void main()
{
char s1[20],s2[20];
int pos;
printf("Enter First String :  ");
gets(s1);
printf("\nEnter Second String :  ");
gets(s2);
printf("\nAfter Which Position You Want To Insert The Second String in First \nString :  ");
scanf("%d",&pos);
locate(s1,s2,pos);
}

void locate(char s1[],char s2[],int pos)
{
int i,j;
for(i=pos,j=0;j<strlen(s2);i++,j++)
s1[i]=s2[j];
s1[strlen(s1)]='\0';
printf("\nString After Insertion :  %s",s1);
return;
}

