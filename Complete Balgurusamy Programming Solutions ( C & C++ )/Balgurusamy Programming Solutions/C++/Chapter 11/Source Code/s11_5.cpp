#include<iostream.h>
#include<iomanip.h>
#include<fstream.h>
#include<stdio.h>
#include<string.h>

int main(void)
{
 fstream file,file1,file2;
 file.open("Target.txt",ios::in|ios::out|ios::trunc);
 file1.open("Source 1.txt",ios::in|ios::out|ios::trunc);
 file2.open("Source 2.txt",ios::in|ios::out|ios::trunc);
 int n1,n2,i,j,k,num,number;
 cout<<"How Many Integers You Want To Add in File 1  :    ";
 cin>>n1;
 cout<<"\n\nEnter The Contents of File 1 :\n\n";
 for(i=0;i<n1;i++)
 {
  cin>>num;
  file1<<num<<"\n\n";                       ////// Inserting Numbers in Source 1 File /////
 }
 cout<<"\n\nSuccessfully Inserted The Data in The File 1...\n\n";

 cout<<"\n\nHow Many Integers You Want To Add in File 2  :    ";
 cin>>n2;
 cout<<"\n\nEnter The Contents of File 2 :\n\n";
 for(i=0;i<n2;i++)
 {
  cin>>num;
  file2<<num<<"\n\n";                     ////// Inserting Numbers in Source 2 File /////
 }
 cout<<"\n\nSuccessfully Inserted The Data in The File 2...\n\n";
 int arr[20];
 file1.seekg(0,ios::beg);
 for(i=0;i<n1;i++)
 {
  file1>>number;
  arr[i]=number;                     ////// Inserting Numbers in Array From Source 1 File /////
 }
 file2.seekg(0,ios::beg);
 for(j=0;j<n2;j++,i++)
 {
  file2>>num;                      ////// Inserting Numbers in Array From Source 2 File /////
  arr[i]=num;
 }

 for(i=1;i<=(n1+n2);i++)
 {
	for(j=1;j<=(n1+n2-i);j++)
	{
		if( arr[j-1] > arr[j] )
		{
		  int temp=arr[j-1];
		  arr[j-1]=arr[j];                //// Bubble Sorting Done ////
		  arr[j]=temp;
		}
	}
 }

 for(i=0;i<(n1+n2);i++)
 file<<arr[i]<<"\n\n";                 ////// Inserting Numbers in Target File /////

 cout<<"\n\nShowing The Numbers From The Files...\n\n";
 file.seekg(0,ios::beg);
 for(i=0;i<n1+n2;i++)
 {
  file>>number;
  cout<<number<<"\n\n";               ////// Showing The Numbers From Target File /////
 }

 cout<<"\n\n";
 file.close();
 return(0);
}


