//Chapter 7, Example 7.5
clc
//Variable Declaration
r1 = 6                    //resistance in ohms
r2 = 6                    //resistance in ohms
r3 = 2                    //resistance in ohms
r4 = 8                    //resistance in ohms
r5 = 12                   //resistance in ohms
e = 24                    //voltage
 
//Calculation
r = (r1*r2)/(r1+r2)          //parallel combination of R1 and R2
ra = (r*r3)/(r+r3)           //resistance A combination in ohm
rb = (r4*r5)/(r4+r5)         //resistance B combination in ohm
rt = ra+rb                   //total resistance in ohms
is = e/rt                    //current
v1 = is*ra                   //voltage across R'A'
v5 = is*rb                   //voltage across R'B'
i4 = v5/r4                    //current in ampere through R'B'
i2 = v1/r2                   //current in ampere through R2

//Results
printf("Rt = %d ohm \n",rt)
printf("Is = %d A \n",is)
printf("V1 = %.1f V \n",v1)
printf("V5 = %.1f V \n",v5)
printf("I4 = %.1f A \n",i4)
printf("I2 = %.1f A \n",i2)
