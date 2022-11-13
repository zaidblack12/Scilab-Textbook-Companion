//Chapter 5, Example 5.13
clc
//Variable Declaration
e = 20                           //supply voltage
i = 4*10^-3                      //current
r2 = 1000                        //resistance2

//Calculation
r1 = 4*r2                        //resistance1

//Results
printf("R2 = %d Kohm \n",r2/1000)
printf("R1 = %d kohm",r1/10^3)
