#include<stdio.h>
void main()
{
char f[10],m[10],l[10];
printf("Enter First Name : ");
scanf("%s",f);
printf("Enter Middle Name : ");
scanf("%s",m);
printf("Enter Last Name : ");
scanf("%s",l);
printf("\n\nName Entered : %s %s %s ",f,m,l);
printf("\n\n(a) %s %c. %s",f,m[0],l);
printf("\n\n(b) %c.%c. %s",f[0],m[0],l);
printf("\n\n(c) %s %c.%c.",l,f[0],m[0]);
}
