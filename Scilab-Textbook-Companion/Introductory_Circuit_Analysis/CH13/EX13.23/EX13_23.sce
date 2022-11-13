//Chapter 13, Example 13.23
clc
//Variable Declaration
y1 = 1600                    //in volts
x = 10*10^-3                 //time in millisecond

//Calculation
v = sqrt(((y1*x)+(y1*x))/(20*10^-3))    //in volts

//Results
printf("Vrms = %d V ",v)
