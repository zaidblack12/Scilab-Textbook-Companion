//Chapter 6, Example 6.10
clc
//Variable Declaration
r1 = 30                          //resistance in ohm fig 6.18
r2 = 30                          //resistance in ohm fig 6.18
r3 = 30                          //resistance in ohm fig 6.19
r4 = 1000                       //resistance in ohm fig 6.19
r5 = 0.1                        //resistance in ohm fig 6.20

//Calculation
rt = (r1*r2)/(r1+r2)               //total resistance in ohm
rt1 = (rt*r3)/(rt+r3)              //total resistance in ohm
rt2 = (rt*r4)/(rt+r4)              //total resistance in ohm
rt3 = (rt*r5)/(rt+r5)              //total resistance in ohm
//Results
printf("a. Rt = %d ohm \n",rt)
printf("b. Rt = %d ohm \n",rt1)
printf("c. Rt = %.3f ohm \n",rt2)
printf("d. Rt = %.3f ohm",rt3)
