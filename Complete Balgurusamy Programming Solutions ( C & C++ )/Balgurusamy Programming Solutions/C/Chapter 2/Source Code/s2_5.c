#include<stdio.h>
void rice();
void sugar();
void main()
{
char ch;
printf("\n\t\t*******LIST OF ITEMS*******\n");
printf("\n\t\t____\t\t_____");
printf("\n\t\tItem\t\tPrice");
printf("\n\t\t____\t\t_____");
printf("\n\n\t\tRice\t\tRs.16.75");
printf("\n\n\t\tSugar\t\tRs.15.00");
printf("\n\n\n What Do You Want To Buy....");
printf("\n\n r -> Rice , s -> Sugar");
printf("\n\nEnter Your Choice : ");
scanf("%c",&ch);
switch(ch)
{case 'r' : {
				rice();
				break;
				}

 case 'R' : {
				rice();
				break;
				}

 case 's' : {
				sugar();
				break;
				}

 case 'S' : {
				sugar();
				break;
				}

 default: {
				printf("Invalid Choice Entered....");
				break;
			  }

}
}
void rice()
{
float rate;
printf("\n\nEnter The Required Quantity You Want(in kg) : ");
scanf("%f",&rate);
rate=rate*16.75;
printf("\nYour Bill is of  :  Rs. %g",rate);
}
void sugar()
{
float rate;
printf("\n\nEnter The Required Quantity You Want(in kg) : ");
scanf("%f",&rate);
rate=rate*15.00;
printf("\nYour Bill is of  :  Rs. %g",rate);
}


