#include<iostream.h>
#include<iomanip.h>
#include<fstream.h>
#include<stdio.h>
#include<string.h>

class Telephone
{
 public:
	char name[20];
	char mobile_number[15];
	void input(void);
	void output(void);
};

void Telephone :: input(void)
{
 cout<<"\n\n\nEnter The Name of Customer :   ";
 gets(name);
 cout<<"\nEnter The Mobile Number of Customer :   ";
 gets(mobile_number);
}

void Telephone :: output(void)
{
 cout<<"\n\n\t\t"<<setw(20)<<setiosflags(ios::left)<<name<<setw(15)<<setiosflags(ios::right)<<"\t\t"<<mobile_number;
}

int main(void)
{
 fstream file;
 file.open("Airtel.txt",ios::in|ios::out|ios::ate|ios::trunc);
 Telephone t;
 int i,total;
 char find[30];
 cout<<"How many Customers You Want To Add :    ";
 cin>>total;
 file.seekg(0,ios::beg);
 for(i=0;i<total;i++)
 {
	t.input();
	file.write( (char*)&t,sizeof(t) );
 }
 cout<<"\n\n\n\nSuccessfully Written The Data in The Database...\n\n";
 file.seekg(0,ios::beg);
 for(i=0;i<80;i++)
 cout<<"_";
 cout<<"\n\t\tCustomer Name\t\t\t\tMobile Number\n";
 for(i=0;i<80;i++)
 cout<<"_";
 cout<<"\n";
 for(i=0;i<total;i++)
 {
	file.read( (char*)&t,sizeof(t) );
	t.output();
 }
 cout<<"\n\n\n\n";
 int flag=1,found=0;
 file.seekg(0,ios::end);
 int loc,n,check,move,ch;
 loc=file.tellg();
 n=loc/sizeof(t);
 cout<<"\n\nTotal Number of Customers :   "<<n<<"\n\n";

 while( flag )
 {
	 cout<<"\n\n\n\nWhat Do You Want To Do ?\n\n";
	 cout<<"1. Find Telephone Number\n";
	 cout<<"2. Find Customer Name\n";
	 cout<<"3. Update Telephone Number\n";
	 cout<<"4. Exit\n\n";
	 cout<<"Enter Your Choice :   ";
	 cin>>ch;
	 switch(ch)
	 {
		  case 1 :  cout<<"\n\nEnter The Number of Customer Whose Telephone Number You Want To Find Out :   ";
						cin>>check;
						move=(sizeof(t))*(check-1);
						file.seekg(move,ios::beg);
						file.read( (char*)&t,sizeof(t) );
						for(i=0;i<80;i++)
						cout<<"_";
						cout<<"\n\t\tCustomer Name\t\t\t\tMobile Number\n";
						for(i=0;i<80;i++)
						cout<<"_";
						cout<<"\n";
						t.output();
						break;

		  case 2 :  cout<<"\n\nEnter The Number of Customer Whose Name You Want To Find Out :   ";
						cin>>check;
						move=(sizeof(t))*(check-1);
						file.seekg(move,ios::beg);
						file.read( (char*)&t,sizeof(t) );
						for(i=0;i<80;i++)
						cout<<"_";
						cout<<"\n\t\tCustomer Name\t\t\t\tMobile Number\n";
						for(i=0;i<80;i++)
						cout<<"_";
						cout<<"\n";
						t.output();
						break;

		  case 3 :  cout<<"\n\nEnter The Number of Customer Whose Telephone Number You Want To Update :   ";
						cin>>check;
						move=(sizeof(t))*(check-1);
						file.seekg(move,ios::beg);
						t.input();
						file.write( (char*)&t,sizeof(t) );
						cout<<"\n\nSuccessfully Updated The Telephone Number of The Customer...\n\n";
						file.seekg(0,ios::beg);
						for(i=0;i<80;i++)
						cout<<"_";
						cout<<"\n\t\tCustomer Name\t\t\t\tMobile Number\n";
						for(i=0;i<80;i++)
						cout<<"_";
						cout<<"\n";
						for(i=0;i<total;i++)
						{
							file.read( (char*)&t,sizeof(t) );
							t.output();
						}
						cout<<"\n\n\n\n";
						break;


		  case 4 :  cout<<"\n\nProgram Will Terminate Now...\n\n";
						flag=0;
						break;

	  default : cout<<"\n\nInvalid Input.";
						break;
	 }
 }

 file.close();
 return(0);
}


