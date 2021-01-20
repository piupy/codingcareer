#include<stdio.h>
void main()
{
int count[5]={0},i,j,can,spoilt=0,max,index=0;
printf("Select The Candidate Whom You Want To Vote : \n\n");
printf("1. Narender Modi ( BJP )\n");
printf("2. Arvind Kejriwal ( AAP )\n");
printf("3. Rahul Gandhi ( Congress )\n");
printf("4. Mulayam Singh ( SP )\n");
printf("5. Mayavati ( BSP )\n");
for(i=0;i<10;i++)
{
printf("\nUser %d :-> Please Select Your Candidate : ",i+1);
scanf("%d",&can);
switch(can)
{
case 1 : count[0]++;
			break;

case 2 : count[1]++;
			break;

case 3 : count[2]++;
			break;

case 4 : count[3]++;
			break;

case 5 : count[4]++;
			break;

default : printf("\nInvalid Input By The User\n");
			spoilt++;
			break;

}
}
max=0;
for(i=0;i<5;i++)
{
if(count[i]>max)
{
max=count[i];
index=i+1;
}
}
printf("\n\nHere Are The Results : \n\n");
printf("1. Narender Modi ( BJP )      :--->   %d  Votes\n\n",count[0]);
printf("2. Arvind Kejriwal ( AAP )    :--->   %d  Votes\n\n",count[1]);
printf("3. Rahul Gandhi ( Congress )  :--->   %d  Votes\n\n",count[2]);
printf("4. Mulayam Singh ( SP )       :--->   %d  Votes\n\n",count[3]);
printf("5. Mayavati ( BSP )           :--->   %d  Votes\n\n",count[4]);
printf("Number of Votes Spoilt        :--->   %d\n\n",spoilt);
switch(index)
{
case 1 : printf("\n\nCongratulations to Mr. Narender Modi for a win with Maximum Votes ( %d )",count[0]);
			break;

case 2 : printf("\n\nCongratulations to Mr. Arvind Kejriwal for a win with Maximum Votes ( %d )",count[1]);
			break;

case 3 : printf("\n\nCongratulations to Mr. Rahul Gandhi for a win with Maximum Votes ( %d )",count[2]);
			break;

case 4 : printf("\n\nCongratulations to Mr. Mulayam Singh for a win with Maximum Votes ( %d )",count[3]);
			break;

case 5 : printf("\n\nCongratulations to Ms. Mayavati for a win with Maximum Votes ( %d )",count[4]);
			break;

}
}

