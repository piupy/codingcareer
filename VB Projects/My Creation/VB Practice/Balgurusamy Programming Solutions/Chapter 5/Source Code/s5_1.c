#include<stdio.h>
void withoutelse();
void withelse();
void main()
{
int x;
printf("1.  Without Else\n2.  With Else\n");
printf("\n\nThrough Which Method You Want To Do ( 1/2 ): ");
scanf("%d",&x);
switch(x)
{
case 1 : withoutelse();
			break;
case 2 : withelse();
			break;
default: printf("\n\nInvalid Input");
}
}
void withoutelse()
{
int a;
printf("\n\nYou Selected Withoutelse Method ");
printf("\n\nEnter A Number : ");
scanf("%d",&a);
if(a%2==0)
{
printf("\nNUMBER IS EVEN");
}
if(a%2!=0)
{
printf("\nNUMBER IS ODD");
}
}
void withelse()
{
int a;
printf("\n\nYou Selected Withelse Method ");
printf("\n\nEnter A Number : ");
scanf("%d",&a);
if(a%2==0)
{
printf("\nNUMBER IS EVEN");
}
else
{
printf("\nNUMBER IS ODD");
}
}

