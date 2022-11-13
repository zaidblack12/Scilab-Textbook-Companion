//Chapter 6, Example 6.12
clc
//Variable Declaration
r1 = 10                     //resistance in ohm
r2 = 20                     //resistance in ohm
rt = 4                      //total resistance in ohm
i1 = 4                      //current of R1 in ampere


//Calculation
r = (1/rt)-(1/r1)-(1/r2)
r3 = (1/r)                         //resistance in ohm
e = i1*r1                          //supply voltage
is = e/rt                          //source current in ampere
i2 = e/r2                          //current of R2 in ampere
p2 = i2*i2*r2                      //power of R2 in watt

//Results
printf("a. R3 = %d ohm \n",r3)
printf("b. E = %d V \n",e)
printf("c. Is = %d A \n",is)
printf("d. I2 = %d A \n",i2)
printf("e. P2 = %d W",p2)
