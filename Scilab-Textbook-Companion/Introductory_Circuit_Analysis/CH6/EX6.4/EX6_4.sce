//Chapter 6, Example 6.4
clc
//Variable Declaration
r1 = 12                      //resistor in ohm fig 6.9
n1 = 3                       //number of component
r2 = 2                       //resistor in ohm fig 6.10
n2 = 4                       //number of component
//Calculation
rt1 = r1/n1                  //total resistance in ohm fig 6.9
rt2 = r2/n2                  //total resistance in ohm fig 6.10 

//Results
printf("a. Rt = %d ohm \n",rt1)
printf("b. Rt = %.1f ohm",rt2)
