//Chapter 9, Example 9.17
clc
//Variable Declaration
r1 = 3                     //resistance in ohms
r2 = 10                    //resistance in ohms
r3 = 2                     //resistance in ohms
e = 68                     //voltage
i = 6                      //current in amperes

//Calculation
rth = r1+r2+r3              //total resistance in ohms
rl = rth                    //load resistance in ohms
v2 = i*r2                   //voltage
eth = v2 + e                //applying kirchoff's voltage law
plmax = (eth*eth)/(4*rth)   //maximum power in watt

//Results
printf("Rth =  %d ohm \n",rth)
printf("PLmax = %.2f W",plmax)
