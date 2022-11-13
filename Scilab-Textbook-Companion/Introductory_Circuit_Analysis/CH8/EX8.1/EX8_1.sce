//Chapter 8, Example 8.1
clc
//Variable Declaration
i = 10*10^-3                 //source current
r = 20*10^3                  //resistance in ohms

//Calculation
i1 = i                       //current in ampere
v1 = i1*r                   //by ohm's law, in volts
vs = v1                     //in volts

//Results
printf("I1 = %d mA \n",i1*1000)
printf("Vs = %d V",vs)
