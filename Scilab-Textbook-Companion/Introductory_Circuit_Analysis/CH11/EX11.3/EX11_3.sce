//Chapter 11, Example 11.3
clc
//Variable Declaration
o = 4*10^-4                 //magnetic flux in webers
a = 2*10^-3                 //area in square meter
h = 170                     //magnetizing force in At/m
l = 0.16                    //mean length in meter
n = 400                     //number of turns
uo = 12.56*10^-7            //magnetic permeability (uo)

//Calculation
b = o/a                      //the flux density
I = h*l/n                   //applying ampere's circuital law in mA
u = b/h                     //the permeability of the material in Wb/A.m
ur = u/uo                   //relative permeability (ur)
//Results
printf("a. I = %d mA \n",I*10^3)
printf("b  U = %f x 10^-3 Wb/A.m \n",u*10^3)
printf("   Ur = %.2f \n",ur)
