#include<iostream.h>

void test(int) throw(char);

int main(void)
{
 cout<<"\n\nThis Program Can Rethrow Only Character Type Objects ( Replace Your Desired Datatype in Coding With The Existing One To Rethrow It ) ...\n\n";
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

void test(int x) throw(char)
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
