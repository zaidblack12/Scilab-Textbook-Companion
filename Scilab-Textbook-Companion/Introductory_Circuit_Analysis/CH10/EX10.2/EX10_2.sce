//Chapter 10, Example 10.2
clc
//Variable Declaration
a = 0.01                 //area of plate in meter square
d = 1.5*10^-3            //distance in meter
eo = 8.85*10^-12         //permittivity
v = 450                  //voltage

//Calculation
c = eo*a/d              //capacitance in farad
E = v/d                 //electric field in V/m
q = c*v                 //charge on each plate in Coulomb

//Results
printf("a. C = %.f pF \n",c*10^12)
printf("b. E = %d x 10^3 V/m \n",E/1000)
printf("c. Q = %.2f nC \n",q*10^9)
