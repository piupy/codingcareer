#include<iostream.h>

void test(int);

int main(void)
{
 cout<<"\n\nx = 1\n\n";
 test(1);
 cout<<"\n\nx = 2\n\n";
 test(2);
 cout<<"\n\nx = 3\n\n";
 test(3);
}

void test(int x)
{
 try
 {
	if( x == 1 )
		throw(x);
	else if( x == 2 )
		throw('x');
	else if( x == 3 )
		throw(1.0);
 }
 catch(int)
 {
	cout<<"\n\nCaught An Integer...\n\n";
 }
 catch(char)
 {
	cout<<"\n\nCaught A Character...\n\n";
 }
 catch(double)
 {
	cout<<"\n\nCaught A Double...\n\n";
 }
}
