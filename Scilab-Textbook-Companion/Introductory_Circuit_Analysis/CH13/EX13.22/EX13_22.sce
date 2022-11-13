//Chapter 13, Example 13.22
clc
//Variable Declaration
y1 = 100                //in volts
x1 = 2                  //in second
y2 = 16                 //in volts
y3 = 4                  //in volts

//Calculation
v = sqrt(((y1*x1)+(y2*x1)+(y3*x1))/10)      //in volts

//Results
printf("Vrms = %.3f V ",v)
