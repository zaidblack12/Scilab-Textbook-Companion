//Chapter 6, Example 6.11
clc
//Variable Declaration
r1 = 9                           //resistance in ohm
r2 = 18                          //resistance in ohm
e = 27                           //voltage supply

//Calculation
rt = (r1*r2)/(r1+r2)             //total resistance in ohm
is = e/rt                        //source current in ampere
i1 = e/r1                       //current in ampere
i2 = e/r2                       //current in ampere
is1 = i1+i2                      //applying KCL
p1 = e*i1                       //power of R1 in watt
p2 = e*i2                       //power of R2 in watt
ps = e*is                       //power supply in watt
ps1 = p1+p2                     //power supply in watt

//Results
printf("a. Rt = %d ohm \n",rt)
printf("b. Is = %.1f A \n",is)
printf("c. I1 = %d A \n",i1)
printf("   I2 = %.1f A \n",i2)
printf("   %.1f A = %.1f A \n",is1,is)
printf("d. P1 = %d W \n",p1)
printf("   I2 = %.1f W \n",p2)
printf("e. Ps = %.1f W \n",ps)
printf("   Ps = %.1f W \n",ps1)
