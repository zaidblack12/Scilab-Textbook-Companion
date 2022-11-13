//Chapter 5, Example 5.10
clc
//Variable Declaration
r1 = 20                    //resistor1
e = 64                     //supply voltage
r2 = 60                    //resistor2

//Calculation
rt = r1+r2                 //total resistance
v1 = r1*e/rt               //voltage1

//Results
printf("V1 = %d V",v1)
