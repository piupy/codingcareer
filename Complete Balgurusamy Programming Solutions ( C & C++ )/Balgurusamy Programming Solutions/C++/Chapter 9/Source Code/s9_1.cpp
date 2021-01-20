#include<iostream.h>
#include<string.h>
#include<stdio.h>
#define next cout<<endl<<endl

class shape
{
 protected:
  double x,y;

 public:
  void get_data(void);
  virtual void display_area(void)=0;
};

void shape :: get_data(void)
{
 next;
 cout<<"Enter The First Dimension :   ";
 cin>>x;
 next;
 cout<<"Enter The Second Dimension :   ";
 cin>>y;
}

class triangle : public shape
{
 public:
  void display_area(void)
  {
	next;
	cout<<"The Area of Triangle is :   "<<(1/2.0 * x * y)<<" Sq. Units";
	next;
  }
};

class rectangle : public shape
{
 public:
  void display_area(void)
  {
	next;
	cout<<"The Area of Rectangle is :   "<<( x * y)<<" Sq. Units";
	next;
  }
};

int main(void)
{
 shape *ptr;
 triangle t1;
 rectangle r1;
 cout<<"Entering The Details of Triangle :--->\n";
 t1.get_data();
 cout<<"\n\n\nEntering The Details of Rectangle :--->\n";
 r1.get_data();
 ptr=&t1;
 ptr->display_area();
 ptr=&r1;
 ptr->display_area();
 return(0);
}

