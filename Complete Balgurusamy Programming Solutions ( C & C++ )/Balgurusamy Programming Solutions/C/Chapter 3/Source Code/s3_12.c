#include<stdio.h>
void main()
{
int ch;
printf("Various Data Types in C Are : ");
printf("\n\n1. Integer(int)");
printf("\n\n2. Character(char)");
printf("\n\n3. Floating Point(float)");
printf("\n\n4. Double(double)");
printf("\n\nEnter The Sequence Number of The Data Type Whose Size You Want To Find : ");
scanf("%d",&ch);
printf("\n\n");
if(ch==1)
{
printf("\nInteger Variable Occupies %d bytes of Space in Memory",sizeof(int));
}
else if(ch==2)
{
printf("\nCharacter Variable Occupies %d byte of Space in Memory",sizeof(char));
}
else if(ch==3)
{
printf("\nFloating Point Variable Occupies %d bytes of Space in Memory",sizeof(float));
}
else if(ch==4)
{
printf("\nDouble Variable Occupies %d bytes of Space in Memory",sizeof(double));
}
else
{
printf("Wrong Choice Entered ");
}
}
