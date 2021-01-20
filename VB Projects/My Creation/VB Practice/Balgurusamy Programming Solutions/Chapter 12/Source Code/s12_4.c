#include<stdio.h>
void main()
{
int a[20],b[20],i,j,count=0,countb=0,flag=0,x,y;
char c;
FILE *fp1,*fp2,*fp3;
fp1=fopen("DATA1.txt","w+");
fp2=fopen("DATA2.txt","w+");
fprintf(fp1,"rohit ");
fprintf(fp2,"sharma");
rewind(fp2);
	while( (c=getc(fp2))!=EOF )
	putc(c,fp1);
printf("\n\nSuccessfully Appended DATA2 To DATA1\n\n");
rewind(fp1);
rewind(fp2);
		printf("\n\n\tContents of DATA1 : \n\n");
			while( (fscanf(fp1,"%c",&x))!=EOF )
			fprintf(stdout,"%c",x);
		printf("\n\n");
		printf("\n\tContents of DATA2 : \n\n");
			while( (fscanf(fp2,"%c",&x))!=EOF )
			fprintf(stdout,"%c",x);
		printf("\n\n");
}


