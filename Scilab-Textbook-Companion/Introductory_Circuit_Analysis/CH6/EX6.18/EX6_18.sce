//Chapter 6, Example 6.18
clc
//Variable Declaration
r1 = 6                        //resistance in ohm
r2 = 24                       //resistance in ohm
r3 = 48                       //resistance  in ohm
i = 42*10^-3                  //current in ampere

//Calculation
r = (1/r1)+(1/r2)+(1/r3)
rt = 1/r                     //total resistance in ohm
i1 = (rt*i)/r1               //current in ampere
r4 = (r2*r3)/(r2+r3)         //resistance in ohm
i11 = (r4*i)/(r4+r1)         //current in ampere

//Results
printf("I1 = %.2f mA \n",i1*1000)
printf("I1 = %.2f mA",i11*1000)
