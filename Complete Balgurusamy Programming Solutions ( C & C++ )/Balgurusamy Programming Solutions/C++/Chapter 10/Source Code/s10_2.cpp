#include<iostream.h>
#include<stdio.h>
#include<string.h>
#include<iomanip.h>
#define total 20
#define size 20

void line(void)
{
 int j;
 for(j=0;j<80;j++)
 cout<<"=";
}

int main(void)
{
 int n,i;
 cout<<"How Many Items You Want To Input :    ";
 cin>>n;
 char name[30];
 char item_name[total][size],item_code[total][size];
 float item_cost[total];
	for(i=0;i<n;i++)
	{
		cout<<"\n\n";
		line();
		cout<<"\n\nEnter The Name of Item "<<(i+1)<<" :   ";
		gets(item_name[i]);
		cout<<"\nEnter The Code of Item "<<(i+1)<<" :   ";
		gets(item_code[i]);
		cout<<"\nEnter The Cost of Item "<<(i+1)<<" :   ";
		cin>>item_cost[i];
	}
	cout<<"\n\nDetails Were Entered Successfully...\n\n";
	line();
	cout<<"\n  NAME\t\t\t\tCODE\t\t\t\tCOST\n\n";
	line();
	for(i=0;i<n;i++)
	{
		cout<<"\n\n";
		cout.fill('-');
		cout.width(size);
		cout.setf(ios::left,ios::adjustfield);
		cout<<item_name[i];
		cout<<"\t\t";
		cout.width(6);
		cout<<item_code[i];
		cout.setf(ios::right,ios::adjustfield);
		cout.setf(ios::fixed,ios::floatfield);
		cout.precision(2);
		cout.width(5);
		cout<<"\t\t\t"<<item_cost[i];
	}
	cout<<"\n\n";
	line();
	cout<<"\n\n";
	for(int k=0;k<38;k++)
		printf(">");
	printf("  END  ");
	for(k=0;k<35;k++)
		printf("<");
 return(0);
}


