#include<stdio.h>
#include<string.h>
int find(char [],char);
void main()
{
int flag;
char string[20],search;
printf("Enter A String :  ");
gets(string);
printf("\nEnter The Character You Want To Search :  ");
search=getchar();
flag=find(string,search);
switch(flag)
{
case 0 : printf("\nCharacter Not Found");
			break;

case 1 : printf("\nCharacter Found");
			break;
}
}

int find(char string[],char search)
{
if( strchr(string,search)==NULL)
{
return(0);
}
else
{
return(1);
}
}