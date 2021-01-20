#include<stdio.h>
void main()
{
int i,j,k;
for(i=1;i<=5;i++)
{
  if(i%2!=0)
  {
  k=1;
  }
  else
  {
  k=0;
  }
  for(j=1;j<=i;j++)
  {
  printf("%d    ",k);
  if(k==1)
  {
  k=0;
  }
  else
  {
  k=1;
  }
  }
  printf("\n\n");
}
}