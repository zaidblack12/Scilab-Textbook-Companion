//Chapter 4, Example 4.16
clc
//Variable Declaration
a1 = 60                 //bulb in watt
a2 = 24                 //hours per day
a3 = 365                //days

//Calculation
Pt = a1*a2*a3           //power in Wh
W = Pt/1000             //energy in kWh

//Results
printf("W = %.2f kWh",W)
