#include<stdio.h>
#include<string.h>
void main()
{
FILE *fp;
char fname[10],c;
int off;
printf("Enter The Name of File :  ");
scanf("%s",fname);
fp=fopen(strcat(fname,".txt"),"w+");
printf("\nEnter The Contents of File :  ");
	while((c=getchar())!=EOF)
	{
		putc(c,fp);
	}
printf("\nEnter The Offset Value :  ");
scanf("%d",&off);
fseek(fp,off-1L,0);
	while((fscanf(fp,"%c",&c))!=EOF)
	{
		fprintf(stdout,"%c",c);
	}
}


