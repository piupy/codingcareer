#include<stdio.h>
#include<math.h>
void main()
{
int i,j;
float c,a[10]={0.0,1.0,2.0,3.0,4.0,5.0,6.0,7.0,8.0,9.0},b[10]={0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9};
printf("\n\t\t\t\tSquare Root Table\n");
for(i=0;i<10;i++)
printf("--------");
printf(" Number   0.0    0.1    0.2    0.3    0.4    0.5    0.6    0.7    0.8    0.9\n");
for(i=0;i<10;i++)
printf("--------");
printf("\n");
for(i=0;i<10;i++)
{
 printf(" %.1f   ",a[i]);
  for(j=0;j<10;j++)
  {
	c=sqrt(a[i]+b[j]);
	printf("   %.2f",c);
  }
printf("\n\n");
}
for(i=0;i<10;i++)
printf("--------");
}
