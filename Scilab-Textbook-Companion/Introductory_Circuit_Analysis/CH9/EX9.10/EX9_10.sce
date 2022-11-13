//Chapter 9, Example 9.10
clc
//Variable Declaration
r1 = 0.8*10^3                  //resistance in ohms 
r2 = 4000                      //resistance in ohms
r3 = 6000                      //resistance in ohms
r4 = 1.4*10^3                  //resistance in ohms
e1= 6                          //voltage
e2 = 10                        //voltage

//Calculation
r12 = (r1*r2)/(r1+r2)           //R1 and R2 are parallel
rth = r4+((r12*r3)/(r12+r3))        //total resistance in ohm
r23 = (r2*r3)/(r2+r3)               //R2 and R3 are parallel
v31 = (r23*e1)/(r23+r1)             //applying voltage divider rule R23
eth1 = v31                       //voltage
v32 = (r12*e2)/(r12+r2)             //applying voltage divider rule R12
eth2 = v32                       //voltage
eth = eth1-eth2                       //voltage

//Results
printf("Rth = %d kohm \n",rth/10^3)
printf("Eth = %d V",eth)
