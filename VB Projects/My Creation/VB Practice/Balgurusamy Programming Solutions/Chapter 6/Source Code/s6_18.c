#include<stdio.h>
void main()
{
int i,count=0;
printf("\nList of All Numbers From 1 to 100 Which Are Not Divisible Either By 2 or 3\n\n");
for(i=1;i<=100;i++)
{
	if(i%2!=0 || i%3!=0)
	{
	printf("  %d\t",i);
	count++;
	}
}
printf("\n\n\t\tTotal Numbers : %d",count);
}
