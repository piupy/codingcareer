#include<iostream.h>
#include<stdio.h>
#include<string.h>

void line(void);

class bank
{

 private:

	char acc_name[20];
	char acc_no[20];
	char acc_type[30];
	float acc_bal;

 public:

	void assign(void);
	void deposit(void);
	void withdraw(void);
	void display(void);

};

void bank :: assign(void)
{
 int ch;
 cout<<endl<<"Please Enter Your Name :  ";
 gets(acc_name);
 cout<<endl<<endl<<"Please Enter Your Account Number :  ";
 cin>>acc_no;
 cout<<endl<<endl<<"Please Select Your Account Type :  "<<endl<<endl<<"1.	Savings"<<endl<<"2.	Current"<<endl;
 cout<<endl<<endl<<"Enter Your Choice :  ";
 cin>>ch;
 if(ch==1)
 strcpy(acc_type,"Savings");
 else if(ch==2)
 strcpy(acc_type,"Current");
 else
 strcpy(acc_type,"Unknown");
 cout<<endl<<endl<<"Please Enter The Principal Amount You Have Deposited :  ";
 cin>>acc_bal;
 cout<<endl<<endl<<"Congratulations !!! You Are Now a SBI Account Holder"<<endl<<endl;
}

void bank :: deposit(void)
{
 float dep;
 cout<<endl<<"Enter The Amount You Want To Deposit :  ";
 cin>>dep;
 acc_bal=acc_bal+dep;
 cout<<endl<<endl<<"Amount Deposited Successfully"<<endl;
 cout<<endl<<endl<<"Total Balance in Your Account :  "<<acc_bal<<endl<<endl;
}

void bank :: withdraw(void)
{
 float with;
 cout<<endl<<"Enter The Amount You Want To Withdraw :  ";
 cin>>with;
 acc_bal=acc_bal-with;
 cout<<endl<<endl<<"Amount Withdrawn Successfully"<<endl;
 cout<<endl<<endl<<"Total Balance in Your Account :  "<<acc_bal<<endl<<endl;
}

void bank :: display(void)
{
 cout<<endl<<"Name of Account Holder :  "<<acc_name;
 cout<<endl<<endl<<"Account Number :  "<<acc_no;
 cout<<endl<<endl<<"Total Balance in Account :  "<<acc_bal<<endl<<endl;
}

int main(void)
{

 bank b[10];

 for(int c=0;c<10;++c)
 {
 int choice=0;
 cout<<"Customer No. --->  "<<c+1<<endl<<endl;
 line();
 cout<<endl<<"\t\t\tWelcome To State Bank of India"<<endl<<endl;
 line();
 while(choice!=5)
 {
 cout<<endl<<"What You Want To Do ?"<<endl<<endl;
 cout<<"1.	Open An Account"<<endl;
 cout<<"2.	Money Deposit"<<endl;
 cout<<"3.	Money Withdrawl"<<endl;
 cout<<"4.	Check My Account Details"<<endl;
 cout<<"5.	Exit"<<endl;
 cout<<endl<<endl<<"Please Enter Your Choice :  ";
 cin>>choice;
  line();
	switch(choice)
	{
		case 1 :		b[c].assign();
						break;

		case 2 :    b[c].deposit();
						break;

		case 3 :    b[c].withdraw();
						break;

		case 4 :		b[c].display();
						break;

		case 5 :		cout<<"Thank You. Good Bye..."<<endl;
						break;

		default :	cout<<endl<<endl<<"Invalid Input"<<endl<<endl;
						break;
	}
	line();
  }

 }
 return(0);
}

void line(void)
{
 cout<<endl;
 for(int i=0;i<8;++i)
 cout<<"==========";
 cout<<endl<<endl;
}


