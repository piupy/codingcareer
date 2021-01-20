#include<stdio.h>
#include<string.h>
void main()
{
char name1[20],name2[20];
int i,j,k,flag=0,index;
printf("Enter String : ");
scanf("%s",name1);
printf("\nEnter Sub String : ");
scanf("%s",name2);
	for(i=0;name1[i]!='\0';i++)
	{
		if(name1[i]!=name2[0])
		{
		continue;
		}
		else
		{
		index=i;
			for(j=index,k=0;j<(index+strlen(name2));j++,k++)
			{
				if(name1[j]==name2[k])
				{
				flag=1;
				continue;
				}
				else
				{
				flag=0;
				break;
				}
			}
				if(flag==1)
				{
				printf("\nSub String Was Found , First Matching Character Found At Position : %d",index+1);
				}
				else
				{
				printf("\nSub String Was Not Found");
				}
				break;
		}

	}
}

