#include<stdio.h>
void main()
{
FILE *fp;
int i,count=0,x,sum=0;
fp=fopen("sum.txt","w+");
printf("Enter The Integers ( Enter -1 To End Reading ) :\n\n");
for(i=0;;i++)
{
printf("\nValue %d :  ",i+1);
scanf("%d",&x);
if(x==-1)
break;
fprintf(fp,"%d ",x);
sum=sum+x;
count++;
}
fprintf(fp,"\n\nSum = %d",sum);
printf("\nSum = %d",sum);
printf("\n\nFile Written Successfully");
}
