#include<stdio.h>
void sort(int (*)[],int);
void main()
{
int a[20],b[20],c[40],temp,i,j,count=0,countb=0,countc,x;
FILE *fp1,*fp2,*fp3;
fp1=fopen("DATA1.txt","w+");
fp2=fopen("DATA2.txt","w+");
fp3=fopen("DATA.txt","w+");
printf("  Enter The Elements of File \"DATA1\" ( Enter -1 To Stop Reading ) :  \n\n");
	for(i=0;i<20;i++)
	{
		printf("\n\tElement %d :  ",i+1);
		scanf("%d",&a[i]);
		if(a[i]==-1)
		break;
		count++;
	}
sort((int(*)[])a,count);            ////// To Sort The Array ////////

printf("\n\n  Enter The Elements of File \"DATA2\" ( Enter -1 To Stop Reading ) :  \n\n");
	for(i=0;i<20;i++)
	{
		printf("\n\tElement %d :  ",i+1);
		scanf("%d",&b[i]);
		if(b[i]==-1)
		break;
		countb++;
	}
sort((int(*)[])b,countb);           ////// To Sort The Array ////////
for(i=0;i<count;i++)
{
fprintf(fp1,"%d ",a[i]);           ///// Entering Data in DATA1 File /////
}
for(i=0;i<countb;i++)
{
fprintf(fp2,"%d ",b[i]);           ///// Entering Data in DATA2 File /////
}
printf("\n\nSuccessfully Written Both The Files\n\n");
countc=count+countb;
for(i=0;i<count;i++)
c[i]=a[i];                       /////// Entering The Elements of A in C ////
for(j=0;j<countb;j++,i++)
c[i]=b[j];                       /////// Entering The Elements of B in C ////

sort((int(*)[])c,countc);           ////// To Sort The Array ////////
for(i=0;i<countc;i++)
{
fprintf(fp3,"%d ",c[i]);           ///// Entering Data in DATA File /////
}
rewind(fp1);
rewind(fp2);
rewind(fp3);
printf("\n\n\tContents of DATA1 : \n\n");
while( (fscanf(fp1,"%d",&x))!=EOF )
fprintf(stdout,"%d  ",x);
printf("\n\n");
printf("\n\tContents of DATA2 : \n\n");
while( (fscanf(fp2,"%d",&x))!=EOF )
fprintf(stdout,"%d  ",x);
printf("\n\n");
printf("\n\tContents of DATA : \n\n");
while( (fscanf(fp3,"%d",&x))!=EOF )
fprintf(stdout,"%d  ",x);
printf("\n\n");
}

/**************************** Bubble Sort Starts *****************************/

void sort(int (*ptr)[],int count)
{
int i,j,temp;
	for(i=1;i<=count-1;i++)
	{
		for(j=1;j<=count-i;j++)
		{
			if( (*ptr)[j-1] > (*ptr)[j] )
			{
				temp=(*ptr)[j-1];
				(*ptr)[j-1]=(*ptr)[j];
				(*ptr)[j]=temp;
			}
		}
	}
}

/**************************** Bubble Sort Ends *******************************/

