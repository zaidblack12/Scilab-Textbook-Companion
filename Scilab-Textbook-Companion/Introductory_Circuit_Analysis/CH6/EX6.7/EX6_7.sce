//Chapter 6, Example 6.7
clc
//Variable Declaration
r = 6                        //resistor in ohm
n = 3                        //number of component
r2 = 9                       //resistor in ohm
r4 = 72                      //resistor in ohm

//Calculation
rt1 = r/n                    //resistance in ohm
rt2 = (r2*r4)/(r2+r4)        //R2 and R4 parallel
rt3 = (rt1*rt2)/(rt1+rt2)    //total resistance in ohm


//Results
printf("Rt = %.1f ohm",rt3)
