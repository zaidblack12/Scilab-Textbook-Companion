//Chapter 9, Example 9.16
clc
//Variable Declaration
r1 = 6                         //resistance in ohms
r2 = 3                         //resistance in ohms
r3 = 8                         //resistance in ohms
e = 12                         //voltage

//Calculation
rth = r3+(r1*r2)/(r1+r2)        //total resistance in ohms
eth = (r2*e)/(r2+r1)            //voltage divider
PLmax = (eth*eth)/(4*rth)       //maximum power in watt

//Results
printf("Rth = %d ohm \n",rth)
printf("Eth = %d V \n",eth)
printf("PLmax = %.1f W",PLmax)
