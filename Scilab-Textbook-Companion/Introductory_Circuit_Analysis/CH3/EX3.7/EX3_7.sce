//Chapter 3, Example 3.7
clc
//Variable Declaration
l = 3048                // in cm
d = 0.032               //in cm
r  = 1.723*10^-6        //in ohm.cm
p = 3.14
r1 = 10.37              //in cm.ohm/ft
l1 = 100                //in ft
a = 159.79              //in cm

//Calculation
A = (p*d^2)/4
R = (r*l)/A             //resistance in ohm
R1 = (r1*l1)/a          //resistance in ohm
//Results
printf("R = %.1f ohm \n",R)
printf("R = %.1f ohm",R1)
