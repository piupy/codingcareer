#include<stdio.h>
void sort(int (*)[],int);
void main()
{
int a[20],b[20],i,j,count=0,countb=0,flag=0,x,y;
FILE *fp1,*fp2,*fp3;
fp1=fopen("DATA1.txt","w+");
fp2=fopen("DATA2.txt","w+");
printf("  Enter The Elements of File \"DATA1\" ( Enter -1 To Stop Reading ) :  \n\n");
	for(i=0;i<20;i++)
	{
		printf("\n\tElement %d :  ",i+1);
		scanf("%d",&a[i]);
		if(a[i]==-1)
		break;
		count++;
		fprintf(fp1,"%d ",a[i]);
	}
printf("\n\n  Enter The Elements of File \"DATA2\" ( Enter -1 To Stop Reading ) :  \n\n");
	for(i=0;i<20;i++)
	{
		printf("\n\tElement %d :  ",i+1);
		scanf("%d",&b[i]);
		if(b[i]==-1)
		break;
		countb++;
		fprintf(fp2,"%d ",b[i]);
	}
printf("\n\nSuccessfully Written Both The Files\n\n");
rewind(fp1);
rewind(fp2);
	if(count!=countb)
	{
		flag=1;
	}
	else
	{
		while( ((fscanf(fp1,"%d",&x))!=EOF) && ((fscanf(fp2,"%d",&y))!=EOF))
		{
			if(x!=y)
			{
			flag=1;
			break;
			}
		}
	}
	if(flag==1)
	{
		printf("\n\nBoth The Files Are Different\n\n");
	}
	else
	{
      rewind(fp1);
		rewind(fp2);
		printf("\n\nContents of Both The Files Are Same\n\n");
		printf("\n\n\tContents of DATA1 : \n\n");
			while( (fscanf(fp1,"%d",&x))!=EOF )
			fprintf(stdout,"%d  ",x);
		printf("\n\n");
		printf("\n\tContents of DATA2 : \n\n");
			while( (fscanf(fp2,"%d",&x))!=EOF )
			fprintf(stdout,"%d  ",x);
		printf("\n\n");
	}
}


