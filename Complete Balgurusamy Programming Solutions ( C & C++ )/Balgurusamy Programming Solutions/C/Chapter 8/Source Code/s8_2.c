#include<stdio.h>
#include<string.h>
void main()
{
char ans[30],correct[]="Dennis Ritchie",count=0;
ask :
printf("Who is the inventor of C ?  :  ");
gets(ans);
if(strcmp(ans,correct)==0)
{
printf("Good\n\n");
}
else
{
count++;
if(count<3)
{
printf("Try Again\n\n");
goto ask;
}
else
printf("Wrong Answer\n\nCorrect Answer is :  \"Dennis Ritchie\"");
}
}