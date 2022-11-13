//Chapter 5, Example 5.11
clc
//Variable Declaration
r1 = 2000                         //resistance1
r2 = 5000                         //resistance2
r3 = 8000                         //resistance3
e = 45                            //supply voltage

//Calculation
rt = r1+r2+r3                    //total resistance
v1 = r1*e/rt                     //voltage1
v3 = r3*e/rt                     //voltage3
//Results
printf("V1 = %d V \n",v1)
printf("V2 = %d V",v3)
