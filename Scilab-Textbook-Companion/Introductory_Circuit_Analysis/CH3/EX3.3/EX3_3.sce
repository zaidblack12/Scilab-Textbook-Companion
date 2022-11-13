//Chapter 3, Example 3.3
clc
//Variable Declaration
p = 10.37               //in CM.ohm/ft
l = 3                   //length in ft
a = 3.185*10^6          //area in cm

//Calculation
R = p*l/a               //resistance in ohm

//Results 
printf("R =  %.3f x 10^-6 ohm",R*10^6)
