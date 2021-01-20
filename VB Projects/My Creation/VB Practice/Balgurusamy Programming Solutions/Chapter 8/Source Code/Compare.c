#include<stdio.h>
void main()
{
int diff,i,len1=0,len2=0,flag=1,index=0;
char name1[20],name2[20];
printf("\nEnter First String : ");
scanf("%s",name1);
printf("\n\nEnter Second String : ");
scanf("%s",name2);
for(i=0;name1[i]!='\0';i++)
{
len1++;
}
for(i=0;name2[i]!='\0';i++)
{
len2++;
}
if(len1!=len2)
{
printf("\nString 1 is Not Equal To String 2 Because Lengths of Strings Are Different");
}
else
{
for(i=0;i<len1;i++)
{
	if((name1[i]-name2[i])==0)
	{
	continue;
	}
	else
	{
	diff=(name1[i]-name2[i]);
	index=i;
	flag=0;
	break;
	}
}
if(flag==1)
{
printf("\nString 1 is Equal To String 2");
}
else
{
printf("\nString 1 is Not Equal To String 2 Because '%c' is Not Equal To '%c' \n( Difference Between ASCII Value of '%c' and '%c' is %d )",name1[index],name2[index],name1[index],name2[index],diff);
}
}
}

