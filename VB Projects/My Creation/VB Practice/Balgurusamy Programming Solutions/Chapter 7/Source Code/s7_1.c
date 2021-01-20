#include<stdio.h>
void main()
{
int i,j,n;
float sigmaxy=0,sigmax=0,sigmay=0,sigmaxisq=0,x[10],y[10],m,c;
printf("Enter The Number of Points : ");
scanf("%d",&n);
for(i=0;i<6;i++)
{
printf("\nEnter The Value of X%d : ",i+1);
scanf("%f",&x[i]);
printf("\nEnter The Value of Y%d : ",i+1);
scanf("%f",&y[i]);
sigmax=sigmax+x[i];
sigmay=sigmay+y[i];
sigmaxy=sigmaxy+x[i]*y[i];
sigmaxisq=sigmaxisq+x[i]*x[i];
}
m=((n*sigmaxy)-(sigmax*sigmay))/((n*sigmaxisq)-(sigmax*sigmax));
c=(sigmay-(m*sigmax))/n;
printf("\n\nValue of M : %g",m);
printf("\nValue of C : %g\n\nSo, According to the Straight Line Equation y = mx + c\n\nThe Equation Formed  By The Given Points is y = %gx + %g",c,m,c);
}
