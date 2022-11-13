//Chapter 4, Example 4.11
clc
//Variable Declaration
n = 0.80                //efficiency
a2 = 120                //in volts
a3 = 8                  //in ampere
b1 = 1                  //motor in horsepower
b2 = 746                //power in watt
//Calculation
Po = n*a2*a3            //output power
I = Po*(b1/b2)           //in horsepower
//Results
printf("H = %.3f hp",I)
