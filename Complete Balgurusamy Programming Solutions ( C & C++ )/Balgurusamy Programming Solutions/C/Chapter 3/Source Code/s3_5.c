#include<stdio.h>
#include<string.h>
void main()
{long int a=12345,b;
int c=10000;
printf("\n\n\t%ld",a);
while(a!=0)
{
b=a%c;
if(b!=0)
{
printf("\n\n\t%ld",b);
}
a=b;
c=c/10;
}
}
