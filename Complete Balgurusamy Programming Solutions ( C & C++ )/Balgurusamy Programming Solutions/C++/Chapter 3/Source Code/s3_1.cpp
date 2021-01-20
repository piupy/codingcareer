#include<iostream.h>
void swap(int &,int &);
int main()
{
int x,y;
cout<<"Enter First Integer :  ";
cin>>x;
cout<<endl<<"Enter Second Integer :  ";
cin>>y;
cout<<endl<<"First Integer Entered :  "<<x;
cout<<endl<<endl<<"Second Integer Entered :  "<<y;
swap(x,y);
cout<<endl<<endl<<"Successfully Swapped The Values";
cout<<endl<<endl<<"After Swapping , First Integer :  "<<x;
cout<<endl<<endl<<"After Swapping , Second Integer :  "<<y;
return(0);
}

void swap(int &a,int &b)
{
int temp;
temp=a;
a=b;
b=temp;
}



