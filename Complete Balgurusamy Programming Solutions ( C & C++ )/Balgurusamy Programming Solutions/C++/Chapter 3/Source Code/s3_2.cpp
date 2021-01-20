#include<iostream.h>
int main()
{
int M,*ptr;
cout<<"Enter The Size of Vector :  ";
cin>>M;
ptr=new int[M];
if(ptr!=NULL)
cout<<endl<<"Vector of Size "<<M<<" Created Successfully.";
}
