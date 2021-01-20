#include<stdio.h>
void sum();
void diff();
void main()
{
int ch;
printf("1. A + B\n");
printf("2. A - B\n");
printf("\nEnter Your Choice ( 1/2 ) : ");
scanf("%d",&ch);
switch(ch)
{
case 1 : sum();
			break;

case 2 : diff();
			break;

default : printf("\n\nInvalid Input");
			break;

}
}

void sum()
{
int a[10][10],b[10][10],c[10][10],row1,row2,col1,col2,i,j;
printf("\nEnter The Row of First Matrix : ");
scanf("%d",&row1);
printf("\nEnter The Column of First Matrix : ");
scanf("%d",&col1);
printf("\nEnter The Elements of First Array : \n\n");
for(i=0;i<row1;i++)
for(j=0;j<col1;j++)
scanf("%d",&a[i][j]);
printf("Enter The Row of Second Matrix : ");
scanf("%d",&row2);
printf("\nEnter The Column of Second Matrix : ");
scanf("%d",&col2);
printf("\nEnter The Elements of Second Array : \n\n");
for(i=0;i<row2;i++)
for(j=0;j<col2;j++)
scanf("%d",&b[i][j]);
for(i=0;i<row2;i++)
for(j=0;j<col2;j++)
c[i][j]=a[i][j]+b[i][j];
printf("\n\nFirst Matrix : \n\n");
for(i=0;i<row1;i++)
{
for(j=0;j<col1;j++)
{
printf("%d\t",a[i][j]);
}
printf("\n");
}
printf("\n\nSecond Matrix : \n\n");
for(i=0;i<row2;i++)
{
for(j=0;j<col2;j++)
{
printf("%d\t",b[i][j]);
}
printf("\n");
}
printf("\n\nSum Matrix : \n\n");
for(i=0;i<row1;i++)
{
for(j=0;j<col1;j++)
{
printf("%d\t",c[i][j]);
}
printf("\n");
}
}

void diff()
{
int a[10][10],b[10][10],c[10][10],row1,row2,col1,col2,i,j;
printf("Enter The Row of First Matrix : ");
scanf("%d",&row1);
printf("\nEnter The Column of First Matrix : ");
scanf("%d",&col1);
printf("\nEnter The Elements of First Array : \n\n");
for(i=0;i<row1;i++)
for(j=0;j<col1;j++)
scanf("%d",&a[i][j]);
printf("Enter The Row of Second Matrix : ");
scanf("%d",&row2);
printf("\nEnter The Column of Second Matrix : ");
scanf("%d",&col2);
printf("\nEnter The Elements of Second Array : \n\n");
for(i=0;i<row2;i++)
for(j=0;j<col2;j++)
scanf("%d",&b[i][j]);
for(i=0;i<row2;i++)
for(j=0;j<col2;j++)
c[i][j]=a[i][j]-b[i][j];
printf("\n\nFirst Matrix : \n\n");
for(i=0;i<row1;i++)
{
for(j=0;j<col1;j++)
{
printf("%d\t",a[i][j]);
}
printf("\n");
}
printf("\n\nSecond Matrix : \n\n");
for(i=0;i<row2;i++)
{
for(j=0;j<col2;j++)
{
printf("%d\t",b[i][j]);
}
printf("\n");
}
printf("\n\nDifference Matrix : \n\n");
for(i=0;i<row1;i++)
{
for(j=0;j<col1;j++)
{
printf("%d\t",c[i][j]);
}
printf("\n");
}
}

