//Chapter 9, Example 9.9
clc
//Variable Declaration
r1 = 6                   //resistance in ohms
r2 = 4                   //resistance in ohms
r3 = 3                   //resistance in ohms
r4 = 12                  //resistance in ohms
e = 72                   //voltage
r22 = 12                  //resistance in ohms


//Calculation
rth = ((r1*r3)/(r1+r3))+((r2*r4)/(r2+r4))       //total resistance in ohms
v1 = (r1*e)/(r1+r3)                        //voltage divider rule R1
v2 = (r22*e)/(r2+r4)                       //voltage divider rule R2
eth = v2-v1                            //applying kirchoff's voltage law

//Results
printf("Rth = %d ohm \n",rth)
printf("Eth = %d V",eth)
