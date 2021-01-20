#include<stdio.h>
#include<string.h>
void main()
{
FILE *fp1,*fp2;
char c,d;
int i=0;
fp1=fopen("source.txt","w+");
printf("Enter The Contents of Source File :  ");
	while((c=getchar())!=EOF)
	{
		putc(c,fp1);
	}
rewind(fp1);
fp2=fopen("target.txt","w+");
fprintf(fp2,"/******************* This is The Copy of Original File *******************/\n\n");
	while((fscanf(fp1,"%c",&c))!=EOF)
	{
		if(c=='r')
		continue;
		fprintf(fp2,"%c",c);
	}
printf("\n\nSuccessfully Written in \"target.txt\"");
}
