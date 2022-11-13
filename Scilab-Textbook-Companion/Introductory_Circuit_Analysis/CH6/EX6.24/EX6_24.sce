//Chapter 6, Example 6.24
clc
//Variable Declaration
e = 18                     //supply voltage
r1 = 5000                  //resistance in ohm

//Calculation
i = e/r1                   //current in ampere
v = e                      //voltage
//Results
printf("I = %.1f mA \n",i*1000)
printf("V = %d V",v)
