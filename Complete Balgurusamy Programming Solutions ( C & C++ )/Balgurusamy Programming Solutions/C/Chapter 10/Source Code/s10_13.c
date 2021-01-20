#include<stdio.h>
typedef struct
{
char name[30];
char add[50];
char grade;
float charge;
int rooms;
}hotel;

hotel h[6]={{"Picaddily Hotel","District Centre , New Delhi",'A',10000.0,200},
				{"Hyatt Hotel","Sarojini Nagar , New Delhi",'B',8000.0,150},
				{"Radisson Blu Hotel","Peeragarhi , New Delhi",'C',5000.0,100},
				{"ITC Maurya Hotel","Dhaula Kuan , New Delhi",'A',3000.0,80},
				{"Ashoka Hotel","Nehru Place , New Delhi",'B',2000.0,50},
				{"Oberoi's Hotel","Uttam Nagar , New Delhi",'C',1000.0,30}
				};

/****************************** Main Function ********************************/

void main()
{
char ch;
int i,found=0;
float show;
printf("\nHere is The List of Grades\n\n");
printf(" Grade 'A' Hotels\n");
printf(" Grade 'B' Hotels\n");
printf(" Grade 'C' Hotels\n\n");
printf("I Want To Search The Hotels With Grade :  ");
scanf("%c",&ch);
switch(ch)
{
case 'A' :  printf("\n");
				for(i=0;i<8;i++)
				{
					printf("__________");
				}
				printf("\n");

				for(i=0;i<6;i++)
			  {
				if( h[i].grade=='A' )
				{
					printf("\n\n\nHotel Name :  %s\nHotel Address :  %s\nHotel Grade :  %c\nAverage Room Charge :  %g\nNumber of Rooms :  %d\n",h[i].name,h[i].add,h[i].grade,h[i].charge,h[i].rooms);
				}
			  }
			  printf("\n");
				for(i=0;i<8;i++)
				{
					printf("__________");
				}
				printf("\n");


			  break;

case 'a' :  printf("\n");
				for(i=0;i<8;i++)
				{
					printf("__________");
				}
				printf("\n");


				for(i=0;i<6;i++)
			  {
				if( h[i].grade=='A' )
				{
					printf("\n\n\nHotel Name :  %s\nHotel Address :  %s\nHotel Grade :  %c\nAverage Room Charge :  %g\nNumber of Rooms :  %d\n",h[i].name,h[i].add,h[i].grade,h[i].charge,h[i].rooms);
				}
			  }
			  printf("\n");
				for(i=0;i<8;i++)
				{
					printf("__________");
				}
				printf("\n");


			  break;


case 'B' :  printf("\n");
				for(i=0;i<8;i++)
				{
					printf("__________");
				}
				printf("\n");


				for(i=0;i<6;i++)
			  {
				if( h[i].grade=='B' )
				{
					printf("\n\n\nHotel Name :  %s\nHotel Address :  %s\nHotel Grade :  %c\nAverage Room Charge :  %g\nNumber of Rooms :  %d\n",h[i].name,h[i].add,h[i].grade,h[i].charge,h[i].rooms);
				}
			  }
			  printf("\n");
				for(i=0;i<8;i++)
				{
					printf("__________");
				}
				printf("\n");


			  break;


case 'b' :  printf("\n");
				for(i=0;i<8;i++)
				{
					printf("__________");
				}
				printf("\n");


				for(i=0;i<6;i++)
			  {
				if( h[i].grade=='B' )
				{
					printf("\n\n\nHotel Name :  %s\nHotel Address :  %s\nHotel Grade :  %c\nAverage Room Charge :  %g\nNumber of Rooms :  %d\n",h[i].name,h[i].add,h[i].grade,h[i].charge,h[i].rooms);
				}
			  }
			  printf("\n");
				for(i=0;i<8;i++)
				{
					printf("__________");
				}
				printf("\n");


			  break;


case 'C' :  printf("\n");
				for(i=0;i<8;i++)
				{
					printf("__________");
				}
				printf("\n");


				for(i=0;i<6;i++)
			  {
				if( h[i].grade=='C' )
				{
					printf("\n\n\nHotel Name :  %s\nHotel Address :  %s\nHotel Grade :  %c\nAverage Room Charge :  %g\nNumber of Rooms :  %d\n",h[i].name,h[i].add,h[i].grade,h[i].charge,h[i].rooms);
				}
			  }
			  printf("\n");
				for(i=0;i<8;i++)
				{
					printf("__________");
				}
				printf("\n");


			  break;


case 'c' :  printf("\n");
				for(i=0;i<8;i++)
				{
					printf("__________");
				}
				printf("\n");


				for(i=0;i<6;i++)
			  {
				if( h[i].grade=='C' )
				{
					printf("\n\n\nHotel Name :  %s\nHotel Address :  %s\nHotel Grade :  %c\nAverage Room Charge :  %g\nNumber of Rooms :  %d\n",h[i].name,h[i].add,h[i].grade,h[i].charge,h[i].rooms);
				}
			  }
			  printf("\n");
				for(i=0;i<8;i++)
				{
					printf("__________");
				}
				printf("\n");


			  break;

default : printf("\n\nInvalid Input\n\n");
			 break;
}

printf("\n\nShow Me The Hotels With Room Charges Less Than :  ");
scanf("%f",&show);
printf("\n");

for(i=0;i<6;i++)
{
	if( h[i].charge < show )
	{
		found++;
		break;
	}
}


if(found==0)
printf("\nNo Hotel Found\n");
else
{
for(i=0;i<6;i++)
{
	if( h[i].charge < show )
	{
		printf("\n\n\nHotel Name :  %s\nHotel Address :  %s\nHotel Grade :  %c\nAverage Room Charge :  %g\nNumber of Rooms :  %d\n",h[i].name,h[i].add,h[i].grade,h[i].charge,h[i].rooms);
	}
}

}
printf("\n");
for(i=0;i<8;i++)
{
printf("__________");
}
printf("\n");

}

/*************************** End of Main Function ****************************/


