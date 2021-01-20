#include<stdio.h>
#include<string.h>
#include<ctype.h>
void main()
{
char string[100],pal[100],rev[100],orig[100];
int i,j,t,flag;
printf("Enter The String :  ");
gets(orig);

/************************ Without Using strrev() ****************************/

for(t=0;t<strlen(orig);t++)
{
string[t]=toupper(orig[t]);
}
string[t]='\0';
for(i=0;i<strlen(string);i++)
{
pal[strlen(string)-i-1]=string[i];
}
pal[i]='\0';
if(strcmp(string,pal)==0)
{
printf("\n\"%s\" is a Palindrome String",orig);
}
else
{
printf("\n\"%s\" is Not a Palindrome String",orig);
}

/***************************************************************************/


/************************ Using strrev() ***********************************

for(t=0;t<strlen(orig);t++)
{
string[t]=toupper(orig[t]);
}
string[t]='\0';
strrev(strcpy(rev,string));
if(strcmp(string,rev)==0)
{
printf("\n\"%s\" is a Palindrome String",orig);
}
else
{
printf("\n\"%s\" is Not a Palindrome String",orig);
}

***************************************************************************/

/************************ Using Another Logic ******************************

for(t=0;t<strlen(orig);t++)
{
string[t]=toupper(orig[t]);
}
string[t]='\0';
for(t=0;t<strlen(string);t++)
{
if(string[t]==string[strlen(string)-t-1])
{
flag=1;
}
else
{
flag=0;
break;
}
}
if(flag==1)
{
printf("\n\"%s\" is a Palindrome String",orig);
}
else
{
printf("\n\"%s\" is Not a Palindrome String",orig);
}

***************************************************************************/

}



