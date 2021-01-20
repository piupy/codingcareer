#include<iostream.h>
#include<stdio.h>
#include<string.h>
#include<conio.h>

const int size=1;
void line(void);

class books
{
 private:
  char *author;
  char *title;
  float price;
  char *publisher;
  int stock;
  static int objcount;
  int lenauthor;
  int lentitle;
  int lenpublisher;
  friend void priceupdate(books *);
  static int succ_tran;
  static int fail_tran;

 public:
  books(void);
  void input(int);
  void setbook(char *,char *,float,char *,int);
  void output(int);
  friend books *find(books *,int);
  friend void details(books *);
  friend void pay(books *);
  friend void pricechange(books *);
  friend void checktran();
  static void stats();
};

int books :: objcount=0;
int books :: succ_tran=0;
int books :: fail_tran=0;

books :: books(void)
{
 objcount++;
 cout<<endl<<"Book No. "<<objcount<<" Object Created"<<endl<<endl;
}

void books :: stats(void)
{
 line();
 cout<<"Total Number of Successful Transactions :  "<<succ_tran;
 cout<<endl<<endl<<"Total Number of Failed Transactions :  "<<fail_tran<<endl<<endl;
}

void books :: input(int counter)
{
  char inauthor[50];
  char intitle[50];
  float inprice;                  // Local Members of This Function //
  char inpublisher[50];
  int instock;
 cout<<endl<<"Enter The Name of Author of Book "<<counter+1<<" :  ";
 gets(inauthor);
 cout<<endl<<"Enter The Title of Book "<<counter+1<<" :  ";
 gets(intitle);                                 // Inputting Values in Local Members of This Function //
 cout<<endl<<"Enter The Price of Book "<<counter+1<<" :  ";
 cin>>inprice;
 cout<<endl<<"Enter The Name of Publisher of Book "<<counter+1<<" :  ";
 gets(inpublisher);
 cout<<endl<<"Enter The Copies of Book "<<counter+1<<" Available  :  ";
 cin>>instock;
 setbook(inauthor,intitle,inprice,inpublisher,instock);
}

void books :: setbook(char *aut,char *tit,float pri,char *pub,int sto)
{
 this->lenauthor=strlen(aut);
 this->lentitle=strlen(tit);               // Finding Length of Each Argument //
 this->lenpublisher=strlen(pub);

 this->author=new char[lenauthor+1];
 this->title=new char[lentitle+1];         // Allocating Memory to Each Argument //
 this->publisher=new char[lenpublisher+1];

 strcpy(this->author,aut);
 strcpy(this->title,tit);
 this->price=pri;                        // Assigning The Values to Data Members //
 strcpy(this->publisher,pub);
 this->stock=sto;
 books :: succ_tran++;
}

void books :: output(int counter)
{
 cout<<endl<<"Name of Author of Book "<<counter+1<<" :  "<<this->author;
 cout<<endl<<endl<<"Title of Book "<<counter+1<<" :  "<<this->title;    // Outputting Through *this Pointer //
 cout<<endl<<endl<<"Price of Book "<<counter+1<<" :  "<<this->price;
 cout<<endl<<endl<<"Name of Publisher of Book "<<counter+1<<" :  "<<this->publisher;
 cout<<endl<<endl<<"No. of Copies of Book "<<counter+1<<" Available in Stock :  "<<this->stock<<endl<<endl;
}

books *find(books *b,int s)
{
 char utitle[50],uauthor[50];
 int found=0;
 cout<<endl<<"Enter The Title of The Book You Want To Search  :  ";
 gets(utitle);
 cout<<endl<<"Enter The Name of The Author of That Book :  ";
 gets(uauthor);

 for(int i=0;i<s;i++)
 {
	if(  ( strcmp( (b->title),utitle ) == 0 ) && ( strcmp( (b->author),uauthor ) == 0 ) )
	{
		found++;
		line();
		cout<<endl<<"1 Result Found ("<<(b->stock)<<" Copies Available in Stock ) "<<endl;    // Prints the Copies of Found Book //
		details(b);
		break;
	}
	b++;
 }

 if(found==0)
 {
 cout<<endl<<"Sorry! No Results Found."<<endl<<endl;   // Prints if No Result is Found //
 return(NULL);                // Returns NULL if No Such Book is Found //
 }
 else
 return(b);     // Returns The Address of That Book Contained in Pointer "b" //

}

void details(books *b)
{
 cout<<endl<<endl<<"Name of Author of Book :  "<<(b->author);
 cout<<endl<<endl<<"Title of Book :  "<<(b->title);
 cout<<endl<<endl<<"Price of Book :  "<<(b->price);
 cout<<endl<<endl<<"Name of Publisher of Book :  "<<(b->publisher);
 cout<<endl<<endl<<"No. of Copies of Book Available in Stock :  "<<(b->stock)<<endl<<endl;
 books :: succ_tran++;
}

void pay(books *b)
{

 char utitle[50],uauthor[50];
 int found=0;
 cout<<endl<<"Enter The Title of The Book You Want To Search  :  ";
 gets(utitle);
 cout<<endl<<"Enter The Name of The Author of That Book :  ";
 gets(uauthor);

 for(int i=0;i< ::size;i++)
 {
	if(  ( strcmp( (b->title),utitle ) == 0 ) && ( strcmp( (b->author),uauthor ) == 0 ) )
	{
		found++;

		cout<<endl<<"How Many Copies You Want To Buy :  ";
		int copies;
		cin>>copies;

			if( copies <= (b->stock) )
			{
				cout<<endl<<endl<<copies<<" Copies of Book \""<<(b->title)<<"\" Successfully Issued";
				cout<<endl<<endl<<"Please Pay  Rs."<<( copies * (b->price) )<<"  At Cash Counter";
				cout<<endl<<endl<<"Thank You For Your Purchase."<<endl<<endl;
				b->stock=b->stock-copies;
				books :: succ_tran++;
			}
			else
			{
				cout<<endl<<endl<<"Sorry! Required Copies Not in Stock"<<endl<<endl;     // Prints if Required Copies Not Available in Stock //
				books :: fail_tran++;
			}

		break;
	}
	b++;
 }

 if(found==0)
 {
 cout<<endl<<"Sorry! No Results Found."<<endl<<endl;   // Prints if No Result is Found //
 books :: fail_tran++;
 }

}

void pricechange(books *b)
{
 priceupdate(b);
}

void priceupdate(books *b)
{

 char utitle[50],uauthor[50];
 int found=0;
 cout<<endl<<"Enter The Title of The Book You Want To Search  :  ";
 gets(utitle);
 cout<<endl<<"Enter The Name of The Author of That Book :  ";
 gets(uauthor);

 for(int i=0;i< ::size;i++)
 {
	if(  ( strcmp( (b->title),utitle ) == 0 ) && ( strcmp( (b->author),uauthor ) == 0 ) )
	{
		found++;
		cout<<endl<<"The Original Price of This Book :  "<<b->price;
		cout<<endl<<endl<<"Enter The New Price of The Book :  ";
		float new_price;
		cin>>new_price;
		b->price=new_price;
		cout<<endl<<endl<<"Price Updated Successfully"<<endl<<endl;     // Price Modified Successfully //
		books :: succ_tran++;
		break;
	}
	b++;
 }

 if(found==0)
 {
 cout<<endl<<"Sorry! No Results Found."<<endl<<endl;   // Prints if No Result is Found //
 books :: fail_tran++;
 }

}               // End of Price Update Function //

int main(void)
{
 cout<<"\n\t\tWelcome To Rohit's Book Inventory System\n\n";
 line();
 books b1[::size],*b2;
 int choice=0,i,j;

 while(choice!=7)
 {
 line();
 cout<<"\t\tWhat Do You Want To Do ?"<<endl<<endl;
 cout<<"\t\t1. Add Books in Inventory"<<endl<<endl;
 cout<<"\t\t2. Show All The Books' Details"<<endl<<endl;
 cout<<"\t\t3. Find A Book"<<endl<<endl;
 cout<<"\t\t4. Buy A Book"<<endl<<endl;
 cout<<"\t\t5. Update The Price of Book"<<endl<<endl;
 cout<<"\t\t6. Show Statistics"<<endl<<endl;
 cout<<"\t\t7. Exit"<<endl<<endl;
 cout<<endl<<"Please Enter your Choice :   ";
 cin>>choice;

 switch(choice)
 {

 case 1 :	for(i=0;i< ::size;i++)
				{
					b1[i].input(i);
					cout<<endl<<"\"Successfully Added The Book in Inventory\""<<endl;
				}
				break;

 case 2 :	for(j=0;j< ::size;j++)
				{
					line();
					b1[j].output(j);
				}
				break;

 case 3 :	b2=find(b1, ::size);
				break;

 case 4 :   pay(b1);
				break;

 case 5 :   pricechange(b1);
				break;

 case 6 :   books :: stats();
				break;

 case 7 :	cout<<endl<<endl<<"Good Bye..."<<endl<<endl;
				break;

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

