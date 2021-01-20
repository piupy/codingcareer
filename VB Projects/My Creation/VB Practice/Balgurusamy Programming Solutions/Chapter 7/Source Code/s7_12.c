#include<stdio.h>
void main()
{
char string[10],check;
int i=0,count=0;
printf("Enter The String : ");
scanf("%s",string);
printf("\nEnter The Character Which You Want To Search in The String : ");
scanf("%c",&check);
i=0;
while(string[i]!='\0')
{
if(string[i]==check)
{
count++;
}
i++;
}
printf("\n\n%c occurred %d times in the entered string",check,count);
}
