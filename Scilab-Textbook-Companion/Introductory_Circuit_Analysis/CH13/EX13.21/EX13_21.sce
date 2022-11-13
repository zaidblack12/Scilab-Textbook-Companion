//Chapter 13, Example 13.21
clc
//Variable Declaration
x1 = 4                  //in second
y1 = 9                  //in volts
x2 = 4                  //in second
y2 = 1                   //in volts
x3 = 8                  //in volts

//Calculation
v = sqrt(((y1*x1)+(y2*x2))/x3)         //in volts

//Results
printf("Vrms = %.3f V ",v)
