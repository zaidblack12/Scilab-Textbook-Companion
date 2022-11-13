//Chapter 4, Example 4.17
clc
//Variable Declaration
p1 = 4*10^3            //energy in kWh
p2 = 205               //power in watt

//Calculation
Pt = p1*1000           //power in watt
W = Pt/p2              // in h
//Results
printf("W = %.2f h",W/1000)
