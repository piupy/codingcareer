#include<stdio.h>
#include<conio.h>
#include<math.h>
void main()

{float a,b,c,d,e;
clrscr();
printf("\nEnter The Co-Ordinates of Point 1 : \n\n");
printf("x-axis : ");
scanf("%g",&a);
printf("\ny-axis : ");
scanf("%g",&b);
printf("\n\nEnter The Co-Ordinates of Point 2 : \n\n");
printf("x-axis : ");
scanf("%g",&c);
printf("\ny-axis : ");
scanf("%g",&d);
e=sqrt(pow((c-a),2)+pow((d-b),2));
printf("\n\nThe Points You Entered Are : \n\n");
printf("Point 1 : (%g,%g)    and \n",a,b);
printf("Point 2 : (%g,%g)",c,d);
printf("\n\nThe Distance Between The Points is : %g Units",e);
getch();
}