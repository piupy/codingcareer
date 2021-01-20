#include<stdio.h>
#include<conio.h>
void add(int,int);
void sub(int,int);
void main()
{
clrscr();
printf("\nFirst Number : 20");
printf("\n\nSecond Number : 10\n\n");
add(20,10);
sub(20,10);
printf("\n\n\n");
getch();
}


void add(int a,int b)
{int c;
c=a+b;
printf("\n\n\t\t%d + %d = %d",a,b,c);
}


void sub(int a,int b)
{int c;
c=a-b;
printf("\n\n\t\t%d - %d = %d",a,b,c);
}
