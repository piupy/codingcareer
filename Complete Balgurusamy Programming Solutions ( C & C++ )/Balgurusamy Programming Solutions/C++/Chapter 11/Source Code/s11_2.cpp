#include<iostream.h>
#include<iomanip.h>
#include<fstream.h>
#include<stdio.h>
#include<string.h>

int main(void)
{
 fstream file;
 file.open("Airtel.txt",ios::in|ios::out);
 int i,total;
 char name[20],mobile_number[15],c;
 cout<<"How many Customers You Want To Add :    ";
 cin>>total;
 for(i=0;i<total;i++)
 {
  cout<<"\n\nEnter The Name of Customer "<<(i+1)<<" :   ";
  gets(name);
  file<<"\t\t"<<setw(20)<<setiosflags(ios::left)<<name;
  cout<<"\nEnter The Mobile Number of Customer :   ";
  gets(mobile_number);
  file<<"\t\t"<<setw(15)<<setiosflags(ios::right)<<mobile_number<<"\n\n";
 }


 cout<<"\n\n\n\nSuccessfully Written The Data in The Database...\n\n";
 for(i=0;i<80;i++)
 cout<<"_";
 cout<<"\n\t\tCustomer Name\t\t\t\tMobile Number\n";
 for(i=0;i<80;i++)
 cout<<"_";
 cout<<"\n";

 file.seekg(0,ios::beg);

 while( file.eof() != 1 )
 {
	file.get(c);
	cout.put(c);
 }

 cout<<"\n\n";
 file.close();
 return(0);
}


