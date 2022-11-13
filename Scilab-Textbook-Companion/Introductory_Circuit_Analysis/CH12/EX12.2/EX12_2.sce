//Chapter 12, Example 12.2
clc
//Variable Declaration
ur = 2000             //permeability of the core
lo = 1.58*10^-6       //inductance of the coil

//Calculation
l = ur*lo             //inductance in H

//Results
printf("L = %.2f mH",l*10^3)
