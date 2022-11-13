//Chapter 13, Example 13.13
clc
//Variable Declaration
v1 = 10                  //in volts
t1 = 1*10^-3             //in millisecond
v2 = 14                  //in volts
v3 = 6                   //in volts

//Calculation
g = ((v1*t1)-(v1*t1))/(2*10^-3)
g1 = ((v2*t1)-(v3*t1))/(2*10^-3)


//Results
printf("a. G = %d V \n",g)
printf("b. G = %d V \n",g1)
