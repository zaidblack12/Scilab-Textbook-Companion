//Chapter 4, Example 4.15
clc
//Variable Declaration
cost = 9 
r1 = 5360*10^3           //in kWh
r2 = 4650*10^3           //pervious reading 

//Calculation
R = r1-r2                 //used
M = R*(cost/10^3)         //in dollar

//Results
printf("M = %.2f dollar",M/100)
