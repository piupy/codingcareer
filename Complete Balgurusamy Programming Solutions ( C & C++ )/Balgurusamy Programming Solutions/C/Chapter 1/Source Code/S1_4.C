#include<stdio.h>
#include<conio.h>
int i,j;
void pattern();
void main()
{int t,u;
 clrscr();


printf("How Many Times You Want The Pattern : ");
scanf("%d",&t);
for(u=0;u<t;u++)
{
pattern();
}
printf("\n\nSolution Given By Developer Rohit Sharma ");
getch();
}




void pattern()
{
 printf("\n\n\n\n");

 printf("\n\n\n");
 printf(" ");
 for(i=0;i<20;i++)
 printf("-");
 printf("\t\t\t\t");
 printf(" ");
 for(i=0;i<20;i++)
 printf("-");

 ////////////One Line is Completed Here////////

 ///////////Printing of | Starts ////////////

 printf("\n");
 for(j=0;j<22;j++)
 {
  if(j==0 || j==20)
  {
  printf("|");
  }
  printf(" ");
 }
 printf("\t\t\t");
  for(j=0;j<22;j++)
 {
  if(j==0 || j==20)
  {
  printf("|");
  }
  printf(" ");
 }
 printf("\n");
 for(j=0;j<22;j++)
 {
  if(j==0 || j==20)
  {
  printf("|");
  }
  printf(" ");
 }
 printf("    >>------------>");
 printf("\t");
  for(j=0;j<22;j++)
 {
  if(j==0 || j==20)
  {
  printf("|");
  }
  printf(" ");
 }

 printf("\n");
 for(j=0;j<22;j++)
 {
  if(j==0 || j==20)
  {
  printf("|");
  }
  printf(" ");
 }
 printf("\t\t\t");
  for(j=0;j<22;j++)
 {
  if(j==0 || j==20)
  {
  printf("|");
  }
  printf(" ");
 }



 //////////Printing of | Finishes///////////

 //////////Printing of Last Line Starts////////////
  printf("\n");
  printf(" ");
 for(i=0;i<20;i++)
 printf("-");
 printf("\t\t\t\t");
 printf(" ");
 for(i=0;i<20;i++)
 printf("-");
 printf("\n\n\n\n");
}
