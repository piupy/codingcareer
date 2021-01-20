#include<stdio.h>
#include<string.h>
void main()
{
int flag=0,count=0;
char *ptr,string[30],orig[30],search;
ptr=string;
printf("Enter The String :  ");
gets(string);
strcpy(orig,string);
printf("\n\nI Want To Search :  ");
scanf("%c",&search);
	while(*ptr!='\0')
	{
		if( *ptr==search )
		{
			*ptr=' ';
			flag++;
			count++;
			ptr++;
		}
		else
		{
			ptr++;
			continue;
		}
	}
		if(flag>0)
		{
			printf("\n\nSuccessfully Deleted All The Occurences of '%c' in The \n\nString \"%s\" ( %d Times )\n\n",search,orig,count);
			printf("\n\n\nModified String :  ");
			ptr=string;
				while( *ptr != '\0')
				{
					if( *ptr == ' ')
					{
						ptr++;
						continue;
					}
					else
					{
						printf("%c",*ptr);
						ptr++;
					}
				}
		}
		else
		{
			printf("\n\nSorry!!! Character '%c' Not Found in The String \"%s\"",search,orig);
		}
}

