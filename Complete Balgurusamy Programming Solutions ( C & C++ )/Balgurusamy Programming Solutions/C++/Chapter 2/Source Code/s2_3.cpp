#include<iostream.h>
#include<ctype.h>
int main()
{
 char ch;
 cout<<"Enter The Character : ";
 cin>>ch;
 int asc=toascii(ch);
 cout<<endl<<"The ASCII Value of \'"<<ch<<"\' is :  "<<asc;
}
