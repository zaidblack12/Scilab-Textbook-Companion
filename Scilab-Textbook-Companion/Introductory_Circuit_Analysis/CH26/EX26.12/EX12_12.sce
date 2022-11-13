//Chapter 12, Example 12.12
clc
//Variable Declaration
r1 = 3                 //resistance1
l = 6*10^-3            //inductance in mH
e = 15                 //voltage in volts
r2 = 2                 //resistance2
//Calculation
im = e/(r1+r2)         //inductance current
ws = (l*im*im)/2       //energy stored

//Results
printf("Ws = %d mJ",ws*10^3)
