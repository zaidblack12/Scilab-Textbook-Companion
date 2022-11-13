//Chapter 7, Example 7.12
clc
//Variable Declaration
e = 120                   //voltage supply
r1 = 4000                 //resistance in ohms
r2 = 6000                 //resistance in ohms
r3 = 12000                //resistance in ohms
r4 = 30000                //resistance in ohms
r5 = 10000                //resistance in ohms

//Calculation
r = (r1*r3)/(r1+r3)       //parallel combination R1 and R3 
rr = (r2*r4)/(r2+r4)      //parallel combination R2 and R4
v1 = (r*e)/8000           //voltage
v2 = (rr*e)/8000          //voltage

//Results
printf("V1 = %d V \n",v1)
printf("V2 = %d V \n",v2)
