#include<iostream.h>
#include<fstream.h>
#include<stdio.h>
#include<string.h>
int main(void)
{
 fstream file,file1;
 file.open("Temp.txt",ios::in|ios::out|ios::trunc);
 file1.open("New.txt",ios::in|ios::out|ios::trunc);
 char c;
 cout<<"Start Writing From Here :   ";
 cin.get(c);
 while(	 c != '\n' )	/// Starting of Main While Loop ////
 {
	file<<c;
	cin.get(c);
 }			////////// End of Main While Loop /////////

 cout<<"\n\nSuccessfully Written in The Temporary File.\n\n";
 file.seekg(0,ios::beg);	// To Go To Beginning of File
 int times=1;
 while( file.eof() != 1 )
 {
	file.get(c);
	  if( c != ' ' )
		file1<<c;
	  else
	  {
			if( times == 1 )
			{
			  file1<<" ";
           times++;
			}
	  }
 }
 file1.seekg(0,ios::beg);	// To Go To Beginning of File
 cout<<"\n\nNow Showing The Contents of File :    ";
 while( file1.eof() != 1 )
 {
  file1.get(c);
  cout<<c;
 }
 return(0);
}

