//Chapter 4, Example 4.9
clc
//Variable Declaration
P = 20*10^-3              //power in watt
R = 5*10^3                //in ohm

//Calculation
I = sqrt(P/R)            //current in miliampere

//Results
printf("I = %d mA",I*1000)
