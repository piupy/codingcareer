#include<stdio.h>
void main()
{
int row,col,mat[10][10],tran[10][10],i,j;
printf("Enter The Rows of The Matrix : ");
scanf("%d",&row);
printf("\nEnter The Columns of The Matrix : ");
scanf("%d",&col);
printf("\nMatrix of Order %d * %d will Be Entered",row,col);
printf("\n\nEnter The Elements of Array : \n\n");
for(i=0;i<row;i++)
for(j=0;j<col;j++)
scanf("%d",&mat[i][j]);
for(i=0;i<row;i++)
for(j=0;j<col;j++)
tran[i][j]=mat[j][i];
printf("\n\nOriginal Matrix : \n\n");
for(i=0;i<row;i++)
{
for(j=0;j<col;j++)
{
printf("%d\t",mat[i][j]);
}
printf("\n");
}
printf("\n\nTranspose Matrix : \n\n");
for(i=0;i<row;i++)
{
for(j=0;j<col;j++)
{
printf("%d\t",tran[i][j]);
}
printf("\n");
}
}