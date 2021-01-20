#include<iostream.h>
#include<math.h>

const float pi=22/7.0;

class Polar
{
 private:
	float location;
	float angle;
	float x;
	float y;
	float arc;
	float radius;

 public:
	Polar(void)
	{}
	Polar(float,float);
	void output(void);
	Polar operator+(Polar);
	void putcordinate(void);
};

Polar :: Polar(float l,float a)
{
 location=l;
 angle=a;
 x=location*cos( (angle*pi)/180 );
 y=location*sin( (angle*pi)/180 );
 arc=atan(y/x);
 radius=sqrt(x*x + y*y);
}

Polar Polar :: operator+(Polar P)
{
 Polar p1;
 p1.x=x+P.x;
 p1.y=y+P.y;
 return(p1);
}

void Polar :: output(void)
{
 cout<<endl<<endl<<"Location :--->  "<<location<<" units";
 cout<<endl<<endl<<"Angle :--->  "<<angle<<"'";
 cout<<endl<<endl<<"X Co-ordinate of Point :--->  "<<x<<" units";
 cout<<endl<<endl<<"Y Co-ordinate of Point :--->  "<<y<<" units";
 cout<<endl<<endl<<"Arc Tangent :--->  "<<angle<<"'";
 cout<<endl<<endl<<"Square Root :--->  "<<radius;
}

void Polar :: putcordinate(void)
{
 cout<<endl<<endl<<"X Co-ordinate of Point :--->  "<<x<<" units";
 cout<<endl<<endl<<"Y Co-ordinate of Point :--->  "<<y<<" units";
}

int main(void)
{
 float l1,l2,a1,a2;
 cout<<endl<<"Enter The Location of The Point 1 :  ";
 cin>>l1;
 cout<<endl<<"Enter The Measure of Angle of Point 1 :  ";
 cin>>a1;
 cout<<endl<<endl<<endl<<"Enter The Location of The Point 2 :  ";
 cin>>l2;
 cout<<endl<<"Enter The Measure of Angle of Point 2 :  ";
 cin>>a2;
 Polar p1=Polar(l1,a1),p2=Polar(l2,a2),p3;
 cout<<endl<<endl<<endl<<"Contents of First Object :--->"<<endl;
 p1.output();
 cout<<endl<<endl<<endl<<endl<<endl<<"Contents of Second Object :--->"<<endl;
 p2.output();
 p3=p1+p2;
 cout<<endl<<endl<<endl<<"Co-ordinates of Third Object :--->"<<endl;
 p3.putcordinate();
 cout<<endl<<endl;
 return(0);
}