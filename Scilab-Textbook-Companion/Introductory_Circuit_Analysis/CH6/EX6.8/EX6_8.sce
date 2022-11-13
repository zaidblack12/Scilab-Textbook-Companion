//Chapter 6, Example 6.8
clc
//Variable Declaration
rt = 9000                    //total resistance in ohm
r1 = 12000                   //resistor in ohm
 
//Calculation
r2 = (rt*r1)/(r1-rt)         //required resistor in ohm

//Results
printf("R2 = %d kohm",r2/10^3)
