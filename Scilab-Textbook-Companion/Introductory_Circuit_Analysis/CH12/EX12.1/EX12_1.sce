//Chapter 12, Example 12.1
clc
//Variable Declaration
d = 4*10^-3            //diameter in meter square
n = 100                //number of turns
uo = 12.56*10^-7       //air in Wb/A.m
l = 0.1                //length of the core in meter

//Calculation
a = (%pi*d*d)/4         //area of the core in square meter
lo = (n*n*uo*a)/l      //inductance of the air-coil in H

//Results
printf("Lo = %.2f uH",lo*10^6)
