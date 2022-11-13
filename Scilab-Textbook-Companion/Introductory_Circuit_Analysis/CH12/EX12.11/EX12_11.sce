//Chapter 12, Example 12.11
clc
//Variable Declaration
r1 = 2                        //resistance1 in ohms
r2  = 5                       //resistance2 in ohms
r3 = 1                        //resistance3 in ohms
r4 = 4                        //resistance4 in ohms
r5 = 7                        //resistance5 in ohms
e  = 50                       //voltage in volts

//Calculation

i1 = e/(r1+r3+r5)              //current1 in ampere
i2= i1                         //equal
v2 = i2*r5                     //voltage2 by ohm's law
v1 = (r3+r5)*e/(r1+r3+r5)      //voltage1 by voltage divider

//Results
printf("I1 = %d A \n",i1)
printf("V2 = %d V \n",v2)
printf("V1 = %d V \n",v1)
