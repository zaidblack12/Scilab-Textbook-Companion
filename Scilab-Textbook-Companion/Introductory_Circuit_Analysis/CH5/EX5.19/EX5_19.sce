//Chapter 5, Example 5.19
clc
//Variable Declaration
r1 = 4                             //resistance1
e = 24                             //supply voltage
r2 = 2                             //resistance2

//Calculation
v1 = (r1*e)/(r1+r2)                //voltage1
v2 = (r2*e)/(r1+r2)                //voltage2

//Results
printf("V1 = %d V \n",v1)
printf("V2 = %d V \n",v2)
