#include<stdio.h>
void main()
{
int i,j;
static int k=1;
for(i=1;k<=91;i++)
{
  for(j=1;j<=i;j++)
  {
  printf("%d   ",k);
  k++;
  }
  printf("\n\n");
}
}