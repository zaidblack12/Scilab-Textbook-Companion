//Chapter 13, Example 13.14
clc
//Variable Declaration
v1  = 3                   //in volts
v2 = 1                   //in volts
t1 = 4*10^-3              //in millisecond
v3 = 10                   //in volts
t2 = 2*10^-3              //in millisecond
v4 = 4                   //in volts
v5 = 2                   //in volts

//Calculation
g = ((v1*t1)-(v2*t1))/(8*10^-3)
g1 = (-(v3*t2)+(v4*t2)-(v5*t2))/(10*10^-3)


//Results
printf("a. G = %d V \n",g)
printf("b. G = %.1f V \n",g1)
