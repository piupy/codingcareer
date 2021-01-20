#include<stdio.h>
void main()
{
int a[10]={11,12,13,14,15,16,17,18,19,20},b[10]={1,2,3,4,5,6,7,8,9,10},c[20],i,j,temp;
for(i=0;i<10;i++)
{
c[i]=a[i];
}
i=0;
for(j=10;j<20;j++,i++)
{
c[j]=b[i];
}
for(i=0;i<19;i++)
{
for(j=0;j<19;j++)
{
if(c[j]<c[j+1])
continue;
else
{
temp=c[j+1];
c[j+1]=c[j];
c[j]=temp;
}
}
}
printf("\n\n\n\t");
for(i=0;i<20;i++)
printf("%d\n\t",c[i]);
}

