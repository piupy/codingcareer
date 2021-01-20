#include<stdio.h>
void main()
{
int temp[31][10],check[31][10],i,j,max,maxday,maxcity,min,minday,mincity;
for(i=0;i<31;i++)
{
printf("Enter The Temperature For \n\n");
for(j=0;j<10;j++)
{
printf("Day %d of City %d : ",i+1,j+1);
scanf("%d",&temp[i][j]);
check[i][j]=temp[i][j];
printf("\n");
}
printf("\n\n\n");
}
printf("\t    \t   Cities ------------------------------------------------->\n\n");
printf("\tDays\t   1     2     3     4     5     6     7     8     9     10\n\n\n");
for(i=0;i<31;i++)
{
printf("\t%d\t   ",i+1);
for(j=0;j<10;j++)
{
printf("%d     ",temp[i][j]);
}
printf("\n");
}
max=0;
for(i=0;i<31;i++)
{
for(j=0;j<10;j++)
{
if(check[i][j]>max)
{
max=check[i][j];
maxday=i+1;
maxcity=j+1;
}
}
}
printf("\n\nHighest Temperature : %d Degrees on  Day %d  in  City %d",max,maxday,maxcity);
min=0;
for(i=0;i<31;i++)
{
for(j=0;j<10;j++)
{
if(check[i][j]<min)
{
min=check[i][j];
minday=i+1;
mincity=j+1;
}
}
}
printf("\n\nLowest Temperature : %d Degrees on  Day %d  in  City %d",min,minday,mincity);
}
