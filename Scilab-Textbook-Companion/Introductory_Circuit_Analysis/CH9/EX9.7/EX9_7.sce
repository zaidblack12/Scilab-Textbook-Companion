//Chapter 9, Example 9.7
clc
//Variable Declaration
r1 = 4                 //resistance in ohms
r2 = 2                 //resistance in ohms
i1 = 12                //current in amperes source
i2 = 0

//Calculation
rth = r1+r2            //total resistance in ohms
eth = i1*r1            //voltage

//Results
printf("Rth = %d ohm \n",rth)
printf("Eth = %d V",eth)
