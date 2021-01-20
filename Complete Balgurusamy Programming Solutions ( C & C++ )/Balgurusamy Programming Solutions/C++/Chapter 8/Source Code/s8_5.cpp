#include<iostream.h>
#include<conio.h>
#include<stdio.h>
#define next cout<<endl<<endl

class person
{
 protected:
  char name[20];
  long int code;
 public:
  void input_person_details(void);
  void output_person_details(void);
};

void person :: input_person_details(void)
{
 next;
 cout<<"\nEnter The Name :   ";
 gets(name);
 next;
 cout<<"\nEnter The Code :   ";
 cin>>code;
 next;
}

void person :: output_person_details(void)
{
 next;
 cout<<"\nName :   "<<name;
 next;
 cout<<"\n\nCode :   "<<code;
 next;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class account : virtual public person
{
 protected:
  float pay;
 public:
  void input_pay(void);
  void output_pay(void);
};

void account :: input_pay(void)
{
 next;
 cout<<"Enter The Pay :   ";
 cin>>pay;
 next;
};

void account :: output_pay(void)
{
 next;
 cout<<"Total Pay :   "<<pay;
 next;
}

//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class admin : virtual public person
{
 protected:
  int experience;
 public:
  void input_experience(void);
  void output_experience(void);
};

void admin :: input_experience(void)
{
 next;
 cout<<"Enter The Experience ( in Years ) :    ";
 cin>>experience;
 next;
}

void admin :: output_experience(void)
{
 next;
 cout<<"Total Number of Years of Experience :   "<<experience<<" Years";
 next;
}

/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

class master : public account , public admin
{
 protected:
  static int master_count;
 public:
  static int check_master_count(void);
  void inc_master_count(void);
};

int master :: master_count=0;

int master :: check_master_count(void)
{
 if( master_count == 0 )                         //////////////// To Check Whether Any Master Exists or Not /////////////////////////////
 return(0);
 else
 return(1);
}

void master :: inc_master_count(void)
{
	master_count++;
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////// Start of MAIN() //////////////////////////////////////////////////////////////////////////////////////////////

int main(void)
{
 int i=1;
 master obj1;
 while(i)
 {
	 cout<<"\n\nWhat Do You Want To Do ?";
	 cout<<"\n\n1. Add A Master";
	 cout<<"\n2. Display The Details of Master";
	 cout<<"\n3. Exit The Program";
	 cout<<"\n\nEnter Your Choice :   ";
	 int choice;
	 cin>>choice;
		switch(choice)
		{
			case 1 :  obj1.input_person_details();
						 obj1.inc_master_count();
						 obj1.input_pay();
						 obj1.input_experience();
                   cout<<"\n\nMaster Added Successfully\n\n";
						 break;

			case 2 :  {
								int proceed;
								proceed=master :: check_master_count();
									if( proceed == 0 )                                      /////////////// To Check The First Master /////////////////
									{
										next;
										cout<<"Sorry!!! No Master Exists.";
									}
									else                                                ////////////// If Masters Exist Then Continue //////////////
									{
										obj1.output_person_details();
										obj1.output_pay();
										obj1.output_experience();
									}
						 break;
						 }

			case 3 :  i=0;
						 cout<<"\n\nThe Program Will Terminate Now.\n\nPress Any Key To Continue...";
                   getch();
						 break;

		  default :  cout<<"\n\nInvalid Input. Try Again!!!";
						 break;

		}             //////////////////// End of Switch /////////////////////

 }                  ///////////////// End of While Loop ///////////////////
 return(0);
}

/////////////////////////////////////////// End of MAIN() ////////////////////////////////////////////////////////////////////////////////////////////////////////
