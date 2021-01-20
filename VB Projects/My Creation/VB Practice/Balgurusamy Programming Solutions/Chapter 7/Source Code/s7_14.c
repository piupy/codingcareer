#include<stdio.h>
void main()
{
char isbn[14],digit[10],check;
int i,j,num[9],sum=0,rem,k;
printf("Enter The ISBN Code : ");
scanf("%s",isbn);
printf("\n\nISBN Code Entered : %s",isbn);
k=0;
while(isbn[k]!='\0')
{
k++;
}
check=isbn[k-1];
rem=check-48;

for(i=0,j=0;i<13;i++)
{
if(isbn[i]!='-')
{
digit[j]=isbn[i];
j++;
}
}
for(i=0;i<9;i++)
{
num[i]=digit[i]-48;
}
for(i=0,j=1;i<9;i++,j++)
{
sum=sum+num[i]*j;
}
if(sum%11==rem)
{
printf("\n\nValid ISBN Code");
}
else
{
printf("\n\nNot a Valid ISBN Code");
}
}
