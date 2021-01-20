#include<iostream.h>

void test(int);

int main(void)
{
 cout<<"\n\nDemonstration of Rethrowing An Exception...\n\n";
 try
 {
	cout<<"\n\nx = 1\n\n";
	test(1);
	cout<<"\n\nx = 2\n\n";
	test(2);
 }
 catch(int)
 {
	cout<<"\n\nRethrowing Integer in main()...\n\n";
 }
 catch(char)
 {
	cout<<"\n\nRethrowing Character in main()...\n\n";
 }
}

void test(int x)
{
 try
 {
	if( x == 1 )
		throw(x);
	else if( x == 2 )
		throw('x');
 }
 catch(int)
 {
	cout<<"\n\nCaught An Integer in test()...\n\n";
	throw;
 }
 catch(char)
 {
	cout<<"\n\nCaught A Character in test()...\n\n";
	throw;
 }
}
