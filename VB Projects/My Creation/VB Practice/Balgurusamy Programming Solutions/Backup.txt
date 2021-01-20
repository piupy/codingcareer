#include<stdio.h>
void pattern1();
void pattern2();
void main()
{printf("\n");
printf("\n");
pattern1();
printf("\n");
printf("\n");
printf("\n");
pattern2();
}
void pattern1()
{int i,j;
 printf("\t\t");
 printf(" ");
 for(i=0;i<20;i++)
 printf("-");

 ////////////One Line is Completed Here////////

 ///////////Printing of | Starts ////////////

 printf("\n");
 printf("\t\t");
 for(j=0;j<22;j++)
 {
  if(j==0 || j==20)
  {
  printf("|");
  }
  printf(" ");
 }
 printf("\n");
 printf("  Sum = ");
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
 printf("\t\t");
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
  printf("\t\t");
  printf(" ");
 for(i=0;i<20;i++)
 printf("-");
}



 ////////////Pattern2 Starts From Here/////////////////


void pattern2()
{int i,j;
 printf("\t\t");
 printf(" ");
 for(i=0;i<20;i++)
 printf("-");

 ////////////One Line is Completed Here////////

 ///////////Printing of | Starts ////////////

 printf("\n");
 printf("\t\t");
 for(j=0;j<22;j++)
 {
  if(j==0 || j==20)
  {
  printf("|");
  }
  printf(" ");
 }
 printf("\n");
 printf("  Product = ");
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
 printf("\t\t");
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
  printf("\t\t");
  printf(" ");
 for(i=0;i<20;i++)
 printf("-");

 }