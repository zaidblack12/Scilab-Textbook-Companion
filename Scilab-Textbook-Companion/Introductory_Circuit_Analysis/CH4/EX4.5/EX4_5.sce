//Chapter 4, Example 4.5
clc
//Variable Declaration
V1 = 6                //in volts
I1 = 3*10^-3          //in miliampere
V2 = 2                //in volts
I2 = 1*10^-3          //in miliampere
//Calculation
Rdc = V1/I1           //in kiloohm
R = V2/I2             //in kiloohm

//Results
printf("Rdc = %d kohm  \n",Rdc/10^3)
printf("R = %d kohm",R/10^3)
