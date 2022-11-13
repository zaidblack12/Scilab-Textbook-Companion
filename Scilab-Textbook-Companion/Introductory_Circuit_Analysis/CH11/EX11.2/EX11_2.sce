//Chapter 11, Example 11.2
clc
//Variable Declaration
a = 0.25                        //area
b = 1.2                        //tesla in T
//Calculation
A = a*(1/39.37)*(1/39.37)      //area in square meter
o = b*A                        //flux in webers

//Results
printf("O = %.3f x 10^-4 Wb ",o*10^4)
