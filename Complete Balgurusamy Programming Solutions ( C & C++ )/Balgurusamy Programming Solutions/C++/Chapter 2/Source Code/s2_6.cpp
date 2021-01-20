#include<iostream.h>
#include<iomanip.h>
class temp
{
private:
float fah,cel;
public:
void input();
void output();
};
void temp::input()
{
cout<<"Enter The Temperature in Fahrenheit :  ";
cin>>fah;
cel=((5*fah)-160)/9;
output();
}
void temp::output()
{
cout<<endl<<"The Temperature in Fahrenheit :  "<<fah<<" 'F";
cout<<endl<<endl<<"The Temperature in Celcius    :  "<<setprecision(3)<<cel<<" 'C";
}
int main()
{
temp t;
t.input();
return(0);
}
