#include<iostream.h>
#include<iomanip.h>
#include<fstream.h>
#include<stdio.h>
#include<string.h>

class Telephone
{
 protected:
	char name[20];
	char mobile_number[15];
 public:
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
 file.open("Airtel.txt",ios::in|ios::out);
 Telephone t;
 int i,total;
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
 cout<<"\n\n";
 file.close();
 return(0);
}


