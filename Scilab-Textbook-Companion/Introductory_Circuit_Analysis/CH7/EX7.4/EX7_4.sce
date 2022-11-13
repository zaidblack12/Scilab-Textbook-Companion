//Chapter 7, Example 7.4
clc
//Variable Declaration
e = 12                     //voltage
r4 = 8                     //resistance in ohms
r2 = 3                     //resistance in ohms
r3 = 6                     //resistance in ohms
r1 = 4                     //resistance in ohms
rc = r1                    //resistance in ohms

//Calculation
i4 = e/r4                  //current through R4 in ampere
rd = (r2*r3)/(r2+r3)       //resistance in ohms
v2 = (rd*e)/(rd+rc)        //applying voltage divider rule

//Results
printf("I4 = %.1f A \n",i4)
printf("V2 = %d V",v2)
