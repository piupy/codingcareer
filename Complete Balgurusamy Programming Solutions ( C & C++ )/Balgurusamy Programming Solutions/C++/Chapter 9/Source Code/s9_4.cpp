#include<iostream.h>
#define next cout<<endl<<endl

class A
{
 private:
  float x,y;

 public:
  void input(void);
  void output(void);
  friend void swap(A *,A *);
};

void A :: input(void)
{
 next;
 cout<<"Enter First Number :   ";
 cin>>x;
 next;
 cout<<"Enter Second Number :   ";
 cin>>y;
 next;
}

void A :: output(void)
{
 next;
 cout<<"First Number :   "<<x;
 next;
 cout<<"Second Number :   "<<y;
 next;
}

void swap(A *s1,A *s2)
{
 ( s1->x )=( s1->x ) + ( s2->x );
 ( s2->x )=( s1->x ) - ( s2->x );             // Swapping The Value of x of Both The Objects
 ( s1->x )=( s1->x ) - ( s2->x );

 ( s1->y )=( s1->y ) + ( s2->y );
 ( s2->y )=( s1->y ) - ( s2->y );             // Swapping The Value of y of Both The Objects
 ( s1->y )=( s1->y ) - ( s2->y );
}

int main(void)
{
 A a1,a2;
 cout<<"Inputting The Values of Object 1 --->\n";
 a1.input();
 cout<<"Inputting The Values of Object 2 --->\n";
 a2.input();
 cout<<"Displaying The Values of Object 1 ( Before Swapping ) --->\n\n";
 a1.output();
 cout<<"Displaying The Values of Object 2 ( Before Swapping ) --->\n\n";
 a2.output();
 swap(&a1,&a2);

 cout<<"\n\nSwapping Done Successfully\n\n";

 cout<<"\n\nDisplaying The Values of Object 1 ( After Swapping ) --->\n\n";
 a1.output();
 cout<<"Displaying The Values of Object 2 ( After Swapping ) --->\n\n";
 a2.output();

 return(0);
}
