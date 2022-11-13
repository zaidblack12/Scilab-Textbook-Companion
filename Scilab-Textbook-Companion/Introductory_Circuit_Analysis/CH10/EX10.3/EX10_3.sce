//Chapter 10, Example 10.3
clc
//Variable Declaration
v = 450                    //voltage
d = 1.5*10^3               //distance in meter
a = 0.01                   //area of plate in meter square
er = 5                     //permittivity
eo = 8.855*10^-12          //permittivity
C = 59*10^-12              //capacitance in farad

//Calculation
E = v/d                   //electric field in V/m
q = er*eo*E*a             //charge on each plate in coulomb
c = er*C                  //capacitance in farad

//Results
printf("E = %.1f V/m \n",E)    //wrong answer in textbook
printf("Q = %f nC \n",q*10^9)   //wrong answer in textbook
printf("C = %d pF \n",c*10^12)
