#include<stdio.h>
#include<string.h>
void main()
{
FILE *fp1,*fp2;
char fname[20],cname[20],c;
int i=0;
printf("Enter The Name of File :  ");
scanf("%s",fname);
fp1=fopen(strcat(fname,".txt"),"w+");
if(fp1!=NULL)
printf("\nFile \"%s\" Created Successfully.\n\n",fname);
printf("Enter The Contents of File :  ");
	while((c=getchar())!=EOF)
	{
		putc(c,fp1);
	}
printf("\n\n{ Contents Were Successfully Written in File \"%s\" \nand Copied in File \"copy.txt\" }\n",fname);
rewind(fp1);
fp2=fopen("copy.txt","w+");
fprintf(fp2,"/******************* This is The Copy of Original File *******************/\n\n");
	while((fscanf(fp1,"%c",&c))!=EOF)
	{
		fprintf(fp2,"%c",c);
   }

}
