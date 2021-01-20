#include<stdio.h>
#define K 5
void main()
{
int i,j,marks[2][3],student[K]={0},total[3]={0},max=0,smax[3]={0},index=0,sindex[3]={0};
for(i=0;i<K;i++)
{
for(j=0;j<3;j++)
{
printf("\nStudent %d :---> Enter The Marks in Subject %d :  ",i+1,j+1);
scanf("%d",&marks[i][j]);
student[i]=student[i]+marks[i][j];
}
}
for(i=0;i<K;i++)
{
printf("\nStudent %d :--->  Total Marks  :  %d",i+1,student[i]);
}
for(j=0;j<3;j++)
{
for(i=0;i<K;i++)
{
if(marks[i][j]>smax[j])
{
smax[j]=marks[i][j];
sindex[j]=i+1;
}
}
}
printf("\n");
for(i=0;i<3;i++)
printf("\nHighest Marks in Subject %d :  %d  obtained by Student %d",i+1,smax[i],sindex[i]);
for(i=0;i<K;i++)
{
if(student[i]>max)
{
max=student[i];
index=i+1;
}
}
switch(index)
{
case 1 : printf("\n\nStudent %d obtained highest total marks :  %d",index,student[0]);
			break;

case 2 : printf("\n\nStudent %d obtained highest total marks :  %d",index,student[1]);
			break;

case 3 : printf("\n\nStudent %d obtained highest total marks :  %d",index,student[2]);
			break;

case 4 : printf("\n\nStudent %d obtained highest total marks :  %d",index,student[3]);
			break;

case 5 : printf("\n\nStudent %d obtained highest total marks :  %d",index,student[4]);
			break;

}
}


