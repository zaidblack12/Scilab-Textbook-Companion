//Chapter 6, Example 6.9
clc
//Variable Declaration
rt = 16000                    //total resistance in ohm
r = 1.75


//Calculation
r1 = r*rt                    //required resistance in ohm

//Results
printf("R1 = %d kohm",r1/10^3)
