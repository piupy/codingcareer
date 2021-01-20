#include<iostream.h>
#include<stdio.h>
#include<conio.h>
#include<string.h>
#define next cout<<endl<<endl
#define size 2

void line(void);

/////////////////////////////////////////////// Creation of Account Class ///////////////////////

class account
{
 protected:
  static int cust_count;
  char cust_name[30];
  unsigned long int acc_no;
  char acc_type[8];
  float acc_balance;
  float min_balance;
 public:
  void input_details(void);
  void show_balance(void);
  void cash_deposit(void);
  void cash_withdrawl(void);
  void output_details(void);
  static int check_cust_count(void);
};

int account :: cust_count=0;

int account :: check_cust_count(void)
{
 if( cust_count == 0 )
 return(0);
 else
 return(1);
}

void account :: input_details(void)
{
 cust_count++;
 acc_no=cust_count;
 next;
 cout<<"Enter The Name of Account Holder :   ";
 gets(cust_name);
 int i=1;
 while(i)                                             /////////////////////// Starting of While Loop //////////////////
 {
	 next;
	 int choice;
	 cout<<"Which Type of Account You Want To Open ? \n\n( '1' for Savings Account and '2' for Current Account )\n\n";
	 cout<<"Enter Your Choice :   ";
	 cin>>choice;
	 switch(choice)                                    /////////////////////// Starting of Switch /////////////////////
	 {
		case 1 :  strcpy(acc_type,"Savings");
						i=0;
						break;
		case 2 :  strcpy(acc_type,"Current");
						i=0;
						break;

		default :  cout<<"Invalid Input. Try Again !!!";
						break;
	 }                                                ///////////////////////// End of Switch ///////////////////////

 }                                                  /////////////////////// End of While Loop //////////////////////
 next;
 min_balance=1000.0;
 cout<<"Enter The Amount You Want To Deposit For The First Time :   ";
 cin>>acc_balance;
 next;
 cout<<"Hello \""<<cust_name<<"\" Your Account Number is  :   "<<acc_no;
 next;
 cout<<"Successfully Entered The Details in The Database...\n\nAccount Opened";
 next;
}

void account :: show_balance(void)
{
 int proceed;
 proceed=account :: check_cust_count();
 if( proceed == 0 )                                      /////////////// To Check The First Customer /////////////////
 {
	next;
	cout<<"Sorry!!! No Customer Exists.";
 }
 else                                                ////////////// If Customers Exist Then Continue //////////////
 {
 next;
 cout<<"Available Balance in Your Account :   Rs. "<<acc_balance;
 next;
 }
}

void account :: cash_deposit(void)
{
 int proceed;
 proceed=account :: check_cust_count();
 if( proceed == 0 )                                      /////////////// To Check The First Customer /////////////////
 {
	next;
	cout<<"Sorry!!! No Customer Exists.";
 }
 else                                                ////////////// If Customers Exist Then Continue //////////////
 {
 next;
 float amount;
 cout<<"Enter The Amount You Want To Deposit :  ";
 cin>>amount;
 acc_balance=acc_balance+amount;
 next;
 cout<<"Successfully Deposited The Amount in Your Account...";
 next;
 cout<<"Your Transaction Was Successful";
 show_balance();
 }
}

void account :: cash_withdrawl(void)
{
 int proceed;
 proceed=account :: check_cust_count();
 if( proceed == 0 )                                      /////////////// To Check The First Customer /////////////////
 {
	next;
	cout<<"Sorry!!! No Customer Exists.";
 }
 else                                                ////////////// If Customers Exist Then Continue //////////////
 {
 next;
 float amount;
 cout<<"Enter The Amount You Want To Withdraw :  ";
 cin>>amount;
 acc_balance=acc_balance-amount;
 if(acc_balance<0)
 {
  next;
  cout<<"Sorry!!! Unable To Dispense The Cash";
  acc_balance=acc_balance+amount;
  next;
 }
 else if(acc_balance<min_balance)
 {
	cout<<"\nYour Account Balance Crossed The Minimum Balance Limit.\n\nA Penalty of Rs. 25 Will Be Charged Every Week By The Bank.\n\nKindly Deposit Rs. "<<(1000.0-acc_balance+25)<<" More To Nullify The Imposed Penalty";
	acc_balance=acc_balance-25;
	next;
	cout<<"Please Collect Your Cash";
	next;
	cout<<"Your Transaction Was Successful";
	show_balance();
 }
 else
 {
	next;
	cout<<"Please Collect Your Cash";
	next;
	cout<<"Your Transaction Was Successful";
	show_balance();
 }

 }                                        ////////////////////// End of Customer Checking If-Else //////////////////////////
}

void account :: output_details(void)
{
 int proceed;
 proceed=account :: check_cust_count();
 if( proceed == 0 )                                      /////////////// To Check The First Customer /////////////////
 {
	next;
	cout<<"Sorry!!! No Customer Exists.";
 }
 else                                                ////////////// If Customers Exist Then Continue //////////////
 {
 next;
 cout<<"Account Holder Name :  "<<cust_name;
 next;
 cout<<"Account Number :   "<<acc_no;
 next;
 cout<<"Account Type :   "<<acc_type;
 next;
 cout<<"Available Balance in Your Account :   "<<acc_balance;
 next;
 }
}

//////////////////////////////////////////////// End of Account Class ///////////////////////////////////

/////////////////// Creation of Current Account Class by Inheriting The Account Class ////////////////////

class cur_acc : virtual public account
{
 protected:
  char cheque_book_status[14];
 public:
  void set_cheque_book_status(void);
  void show_cheque_book_status(void);
};

void cur_acc :: set_cheque_book_status(void)
{
 int proceed;
 proceed=account :: check_cust_count();
 if( proceed == 0 )                                      /////////////// To Check The First Customer /////////////////
 {
	next;
	cout<<"Sorry!!! No Customer Exists.";
 }
 else                                                ////////////// If Customers Exist Then Continue //////////////
 {

 next;
 int choice,i=1;

 if( strcmp(acc_type,"Current") == 0 )                     ///////////// Checking of Account Type /////////////////////
 {

	if( strcmp(cheque_book_status,"Available") == 0 )
	{
	 next;
	 cout<<"Already Applied For Chequebook";
	 next;
	}
	else                                                    /////// Starting of Else Checking For Cheque Book Request //////////
	{
		while(i)                                                  ///////////////// Starting of While Loop ///////////////////
		{
			 cout<<"Do You Want To Get Your Cheque Book Issued From The Bank \n\n( '1' For Yes and '2' For No )  :   ";
			 cin>>choice;
			switch(choice)                                          ////////////////// Starting of Switch //////////////////////
			{
				case 1 :  strcpy(cheque_book_status,"Available");
							 cout<<"\n\nSuccessfully Issued The Cheque Book...";
							 i=0;
							 break;

				case 2 :  strcpy(cheque_book_status,"Not Available");
							 cout<<"\n\nCheque Book Not Issued...";
							 i=0;
							break;

			  default :  next;
							 cout<<"Invalid Input. Try Again !!!";
							 break;
			}                                                     ////////////////////// End of Switch ///////////////////////

		}                                                       /////////////////// End of While Loop //////////////////////

	}                                                       /////// End of Else Checking For Cheque Book Request //////////

 i=1;

	 cout<<"\n\nDo You Want To Check Your Cheque Book Status \n\n( '1' For Yes and '2' For No )  :   ";
	 cin>>choice;
	switch(choice)                                          ////////////////// Starting of Switch //////////////////////
	{
		case 1 :  show_cheque_book_status();
					 break;

		case 2 :  i=0;
					 break;

	  default :  next;
					 cout<<"Invalid Input. Try Again !!!";
					 break;
	}                                                     ////////////////////// End of Switch ///////////////////////

 }                                                       ////////////////// End of Checking ////////////////////////

 else
 {
	next;
	cout<<"Sorry!!! You Are a Savings Bank Account Holder";
	next;
 }

 }                                                    /////////////// End of Customer Checking Else /////////////////
}

void cur_acc :: show_cheque_book_status(void)
{
 int proceed;
 proceed=account :: check_cust_count();
 if( proceed == 0 )                                      /////////////// To Check The First Customer /////////////////
 {
	next;
	cout<<"Sorry!!! No Customer Exists.";
 }
 else                                                ////////////// If Customers Exist Then Continue //////////////
 {

  if( strcmp(acc_type,"Current") == 0 )                     ///////////// Checking of Account Type /////////////////////
 {
	next;
	cout<<"Cheque Book Status :  "<<cheque_book_status;
	next;
 }
  else
 {
	next;
	cout<<"Sorry!!! You Are a Savings Bank Account Holder";
	next;
 }

 }                                                 ///////////////////////// End of Customer Checking Else //////////////////
}

////////////////////////////////////////// End of Current Account Class //////////////////////////////

////////////////////////// Creation of Savings Account Class by Inheriting The Account Class /////////

class sav_acc : virtual public account
{
 protected:
  float rate_of_interest;
 public:
  void show_rate_of_interest(void);
};

void sav_acc :: show_rate_of_interest(void)
{
 int proceed;
 proceed=account :: check_cust_count();
 if( proceed == 0 )                                      /////////////// To Check The First Customer /////////////////
 {
	next;
	cout<<"Sorry!!! No Customer Exists.";
 }
 else                                                ////////////// If Customers Exist Then Continue //////////////
 {

  if( strcmp(acc_type,"Savings") == 0 )                     ///////////// Checking of Account Type /////////////////////
 {
	next;
	rate_of_interest=0.04;
	cout<<"Rate of Interest For The Savings Bank Accounts :   "<<(rate_of_interest*100)<<" % ( "<<(rate_of_interest*100)<<" Percent )";
	cout<<"\n\nEnter The Amount on Which You Want To Find Out The Interest :   ";
	float amount;
	cin>>amount;
	cout<<"\nYou Will Get An Annual Interest of Rs. "<<(rate_of_interest*amount)<<" on The Amount of Rs. "<<amount;
	next;
 }
  else
 {
	next;
	cout<<"Sorry!!! You Are a Current Account Holder";
	next;
 }

 }                                                     /////////////////////// End of Customer Checking Else ///////////////
}

//////////////////////////////// End of Savings Account Class ////////////////////////////////

class customer : public cur_acc , public sav_acc
{
};

int main(void)                                       //////////////////// Starting of main() ///////////////////////
{
 customer c[size];
 int choice,cust_no;

 for( cust_no=0 ; cust_no < size ; cust_no++ )      //////////////////// Starting of For Loop //////////////////////
 {
  int i=1;
  next;
  cout<<"****************************  Customer Number :  \""<<(cust_no+1)<<"\"  *************************";

  while(i)                                          //////////////////// Starting of While Loop //////////////////////
  {
	 next;
	 line();
	 cout<<"\t\t\t\tWelcome To Rohit Bank\n";
    line();
	 next;
	 cout<<"What Do You Want To Do ?";
	 next;
	 cout<<"\n1. Open An Account";
	 cout<<"\n2. Cash Deposit";
	 cout<<"\n3. Cash Withdrawl";
	 cout<<"\n4. Balance Enquiry";
	 cout<<"\n5. Show My Details";
	 cout<<"\n6. Cheque Book Request";
	 cout<<"\n7. Show Cheque Book Status";
	 cout<<"\n8. Show Simple Interest on Certain Amount";
	 cout<<"\n9. Cancel";
	 cout<<"\n\nEnter Your Choice :   ";
	 cin>>choice;
		switch(choice)
		{
		  case 1 :  c[cust_no].input_details();
						break;

		  case 2 :  c[cust_no].cash_deposit();
						break;

		  case 3 :  c[cust_no].cash_withdrawl();
						break;

		  case 4 :  c[cust_no].show_balance();
						break;

		  case 5 :  c[cust_no].output_details();
						break;

		  case 6 : c[cust_no].set_cheque_book_status();
						break;

		  case 7 : c[cust_no].show_cheque_book_status();
						break;

		  case 8 : c[cust_no].show_rate_of_interest();
						break;

		  case 9 :  next;
						cout<<"Your Transaction Was Cancelled !!!";
						i=0;
						break;

		  default : next;
						cout<<"Invalid Input. Try Again !!!";
						break;
		}                                             ///////////////////////// End of Switch ///////////////////////////

	}                                                ///////////////////////// End of While Loop //////////////////////

 }																  ////////////////////////// End of For Loop ////////////////////////
 next;
 cout<<"Press Any Key To Exit The Program...";
 getch();
 return(0);
}                                                 ///////////////////////// End of main() ///////////////////////////

void line(void)
{
 cout<<endl;
	for(int i=0;i<8;++i)
		cout<<"==========";
 cout<<endl;
}

