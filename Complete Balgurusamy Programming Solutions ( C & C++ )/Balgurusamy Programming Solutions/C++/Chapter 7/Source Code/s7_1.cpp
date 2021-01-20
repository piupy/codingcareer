#include<iostream.h>

class FLOAT
{
 private:
	float member;

 public:
	void input(void);
	void output(void);
	FLOAT operator+(FLOAT);     // Overloading + Operator
	FLOAT operator-(FLOAT);     // Overloading - Operator
	FLOAT operator*(FLOAT);     // Overloading * Operator
	FLOAT operator/(FLOAT);     // Overloading / Operator
	FLOAT(float);
	FLOAT(void);
};

FLOAT :: FLOAT(void)
{
										 // Default Constructor
}

FLOAT :: FLOAT(float f)
{
 member=f;                     // Constructor to Set Value to Member
}

FLOAT FLOAT :: operator+(FLOAT F)
{
 return FLOAT(member+F.member);     // Call to Constructor and returning a temporary object
}

FLOAT FLOAT :: operator-(FLOAT F)
{
 return FLOAT(member-F.member);     // Call to Constructor and returning a temporary object
}

FLOAT FLOAT :: operator*(FLOAT F)
{
 return FLOAT(member*F.member);     // Call to Constructor and returning a temporary object
}

FLOAT FLOAT :: operator/(FLOAT F)
{
 return FLOAT(member/F.member);     // Call to Constructor and returning a temporary object
}

void FLOAT :: input(void)
{
 cout<<endl<<"Enter The Value of Data Member For Object :  ";     // Inputting The Value
 cin>>member;
}

void FLOAT :: output(void)
{
 cout<<member;                  // Displaying The Value of Member
}

int main(void)
{
 FLOAT f1,f2,f3;
 f1.input();
 f2.input();
 cout<<endl<<endl<<"Displaying The Contents of Object f1 :--->  ";
 f1.output();
 cout<<endl<<endl<<"Displaying The Contents of Object f2 :--->  ";
 f2.output();

 f3=f1+f2;
 cout<<endl<<endl<<"Displaying The Contents of Object f3 After Addition :--->  ";
 f3.output();

 f3=f1-f2;
 cout<<endl<<endl<<"Displaying The Contents of Object f3 After Subtraction :--->  ";
 f3.output();

 f3=f1*f2;
 cout<<endl<<endl<<"Displaying The Contents of Object f3 After Multiplication :--->  ";
 f3.output();

 f3=f1/f2;
 cout<<endl<<endl<<"Displaying The Contents of Object f3 After Division :--->  ";
 f3.output();

 return(0);
}

