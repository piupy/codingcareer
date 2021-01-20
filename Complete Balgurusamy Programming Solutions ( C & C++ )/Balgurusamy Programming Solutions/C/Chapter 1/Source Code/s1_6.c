#include<stdio.h>
#include<conio.h>
void mul(int);
void main()
{
clrscr();
mul(5);
getch();
}
void mul(int a)
{int i;
for(i=0;i<10;i++)
{printf("%d * %d = %d",a,(i+1),a*(i+1));
printf("\n");}
}
