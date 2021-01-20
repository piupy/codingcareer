#include<stdio.h>
#define VOLUME(r) ((4.0/3)*(3.14)*(r)*(r)*(r))
void main()
{
double r;
printf("Enter The Radius :  ");
scanf("%lf",&r);
printf("\nVolume of Sphere :  %g Cubic Units",VOLUME(r));
printf("\n\nVolume of Sphere with Radius Equal To 5 Metres  :  %g Cubic Units",VOLUME(5));
printf("\n\nVolume of Sphere with Radius Equal To 10 Metres :  %g Cubic Units",VOLUME(10));
printf("\n\nVolume of Sphere with Radius Equal To 15 Metres :  %g Cubic Units",VOLUME(15));
}
