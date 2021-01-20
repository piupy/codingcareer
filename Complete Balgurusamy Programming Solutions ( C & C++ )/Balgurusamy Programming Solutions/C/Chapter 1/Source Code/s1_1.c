#include<stdio.h>
void main()
{char name1[30],name2[30];
printf("Enter Your Name : ");
gets(name1);
printf("\nEnter Your Address : ");
scanf("%[^\n]",name2);
printf("\n\nYour Name is : %s",name1);
printf("\n\nYour Address is : ");
puts(name2);
}
