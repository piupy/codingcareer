#include<stdio.h>
void main()
{
double amount,net_amount=0,principal,rate;
int i,week;
printf("\n\t\tEnter The Amount ( in Rupees )    :  ");
scanf("%lf",&amount);
net_amount=amount;
principal=amount;
printf("\n\t\tRate of Interest ( in percent )   :  ");
scanf("%lf",&rate);
rate=rate/100;
printf("\n\t\tNumber of Weeks ( in Integer )    :  ");
scanf("%d",&week);
printf("\n");
	for(i=0;i<10;++i)
	printf("--------");
printf("\n\t\tWeek\t\tAmount Generated\tAmount Earned\n\n");
	for(i=0;i<10;++i)
	printf("--------");
		for(i=0;i<week;++i)
		{
			net_amount=net_amount+amount*rate;
			printf("\n\t\t%3d\t\tRs. %g\t\tRs. %g\n",i+1,net_amount,net_amount-principal);
			amount=net_amount;
		}
printf("\n");
	for(i=0;i<10;++i)
	printf("--------");
printf("\n\t\t  Amount Invested       :  Rs. %g",principal);
printf("\n\n\t\t  Amount Received       :  Rs. %g",net_amount);
printf("\n\n\t\t  Profit Earned         :  Rs. %g\n\n",net_amount-principal);
	for(i=0;i<10;++i)
	printf("--------");
printf("*****************************  END OF PROGRAM  *********************************");
	for(i=0;i<10;++i)
	printf("--------");
printf("\n");
}
