//Chapter 9, Example 9.8
clc
//Variable Declaration
r1 = 6                    //resistance in ohms
r2 = 4                    //resistance in ohms
e1 = 8                    //voltage

//Calculation
rth = (r1*r2)/(r1+r2)     //R1 and R2 are parallel
eth = (r1*e1)/(r1+r2)     //applying voltage divider rule

//Results
printf("Rth = %.1f ohm \n",rth)
printf("Eth = %.1f V",eth)
