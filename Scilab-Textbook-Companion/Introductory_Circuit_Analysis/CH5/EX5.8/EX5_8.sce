//Chapter 5, Example 5.8
clc
//Variable Declaration
e = 54                    //supply voltage
v1 = 18                   //voltage1
v3 = 15                   //voltage3
r2 = 7                    //resistance2
//Calculation
v2 = e-v1-v3              //voltage2
i = v2/r2                 //current in ampere
r1 = v1/i                 //resistance1
r3 = v3/i                 //resistance3

//Results
printf("a. V2 = %d V \n",v2)
printf("b.  I = %d A \n",i)
printf("c.  R1 = %d ohm \n",r1)
printf("    R3 = %d ohm \n",r3)
