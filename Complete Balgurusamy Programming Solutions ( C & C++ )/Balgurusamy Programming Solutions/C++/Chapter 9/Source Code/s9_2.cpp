#include<iostream.h>
#include<string.h>
#include<stdio.h>
#define next cout<<endl<<endl

class shape
{
 protected:
  double x,y;

 public:
  void get_data(double,double=1);
  virtual void display_area(void)=0;
};

void shape :: get_data(double d1,double d2)
{
 x=d1;
 y=d2;
}

class triangle : public shape
{
 public:
  void display_area(void)
  {
	next;
	cout<<"The Area of Triangle is  :   "<<(1/2.0 * x * y)<<" Sq. Units";
	next;
  }
};

class rectangle : public shape
{
 public:
  void display_area(void)
  {
	next;
	cout<<"The Area of Rectangle is  :   "<<( x * y)<<" Sq. Units";
	next;
  }
};

class circle : public shape
{
 public:
  void display_area(void)
  {
	next;
	cout<<"The Area of Circle is  :   "<<( 3.14 * x * x )<<" Sq. Units";
	next;
  }
};

int main(void)
{
 double x,y;
 next;
 cout<<"Enter The First Dimension  :   ";
 cin>>x;
 next;
 cout<<"Enter The Second Dimension  :   ";
 cin>>y;
 shape *ptr;
 triangle t1;
 rectangle r1;
 circle c1;
 t1.get_data(x,y);
 r1.get_data(x,y);
 c1.get_data(x);
 ptr=&t1;
 ptr->display_area();
 ptr=&r1;
 ptr->display_area();
 ptr=&c1;
 ptr->display_area();
 return(0);
}

