#include<iostream.h>
int main()
{
int count[5]={0},i,j,can,spoilt=0,max,index=0;
cout<<"Select The Candidate Whom You Want To Vote : \n\n";
cout<<"1. Narender Modi ( BJP )\n";
cout<<"2. Arvind Kejriwal ( AAP )\n";
cout<<"3. Rahul Gandhi ( Congress )\n";
cout<<"4. Mulayam Singh ( SP )\n";
cout<<"5. Mayavati ( BSP )\n";
for(i=0;i<10;i++)
{
cout<<"\nUser "<<i+1<<" :-> Please Select Your Candidate : ";
cin>>can;
switch(can)
{
case 1 : count[0]++;
			break;

case 2 : count[1]++;
			break;

case 3 : count[2]++;
			break;

case 4 : count[3]++;
			break;

case 5 : count[4]++;
			break;

default : cout<<"\nInvalid Input By The User\n";
			spoilt++;
			break;

}
}
max=0;
for(i=0;i<5;i++)
{
if(count[i]>max)
{
max=count[i];
index=i+1;
}
}
cout<<"\n\nHere Are The Results : \n\n";
cout<<"1. Narender Modi ( BJP )      :--->   "<<count[0]<<"  Votes\n\n";
cout<<"2. Arvind Kejriwal ( AAP )    :--->   "<<count[1]<<"  Votes\n\n";
cout<<"3. Rahul Gandhi ( Congress )  :--->   "<<count[2]<<"  Votes\n\n";
cout<<"4. Mulayam Singh ( SP )       :--->   "<<count[3]<<"  Votes\n\n";
cout<<"5. Mayavati ( BSP )           :--->   "<<count[4]<<"  Votes\n\n";
cout<<"Number of Votes Spoilt        :--->   "<<spoilt<<"\n\n";
switch(index)
{
case 1 : cout<<"\n\nCongratulations to Mr. Narender Modi for a win with Maximum Votes ( "<<count[0]<<" )";
			break;

case 2 : cout<<"\n\nCongratulations to Mr. Arvind Kejriwal for a win with Maximum Votes ( "<<count[1]<<" )";
			break;

case 3 : cout<<"\n\nCongratulations to Mr. Rahul Gandhi for a win with Maximum Votes ( "<<count[2]<<" )";
			break;

case 4 : cout<<"\n\nCongratulations to Mr. Mulayam Singh for a win with Maximum Votes ( "<<count[3]<<" )";
			break;

case 5 : cout<<"\n\nCongratulations to Ms. Mayavati for a win with Maximum Votes ( "<<count[4]<<" )";
			break;

}
return(0);
}
