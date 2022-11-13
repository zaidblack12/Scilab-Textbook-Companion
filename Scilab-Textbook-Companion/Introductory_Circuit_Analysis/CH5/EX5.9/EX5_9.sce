//Chapter 5, Example 5.9
clc
//Variable Declaration
r1 = 4                       //resistance1
r2 = 7                       //resistance2
e = 37.5                     //supply voltage
i = 2.5                      //current in ampere

//Calculation
rt = 2*r1+r2                 //total resistance
i = e/rt                     //current in ampere
v = i*r2                     //voltage of R2

//Results
printf("I = %.1f A \n",i)
printf("V7ohm = %.1f V \n",v)
