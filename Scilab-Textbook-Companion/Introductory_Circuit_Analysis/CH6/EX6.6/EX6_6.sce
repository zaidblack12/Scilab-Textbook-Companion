//Chapter 6, Example 6.6
clc
//Variable Declaration
r1 = 2                         //resistor in ohm
r2 = 4                         //resistor in ohm
r3 = 5                         //resistor in ohm

//Calculation
rt = 1/((1/r1)+(1/r2)+(1/r3))     //total resistance in ohm
rt1 = (r1*r2)/(r1+r2)            //R1 and R2 parallel
rt2 = (rt1*r3)/(rt1+r3)         //Rt1 and R3 parallel

//Results
printf("Rt = %.3f ohm \n",rt)
printf("Rt = %.3f ohm \n",rt2)
