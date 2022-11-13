//Chapter 5, Example 5.3
clc
//Variable Declaration
Rt = 12*10^3                //total resistance
R2 = 4*10^3                 //resistance2
R3 = 6*10^3                 //resistance3
I = 6*10^-3                 //current in ampere
//Calculation
R1 = Rt-(R2+R3)             //resistance1
E = I*Rt                    //voltage
//Results
printf("R1 = %d kohm \n",R1/10^3)
printf("E = %d V",E)
