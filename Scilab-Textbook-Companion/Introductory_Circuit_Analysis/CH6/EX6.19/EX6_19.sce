//Chapter 6, Example 6.19
clc
//Variable Declaration
r1 = 2                   //resistance in ohm
r2 = 4                   //resistance in ohm
i = 12                   //current in ampere

//Calculation
i1 = (r2*i)/(r1+r2)      //current in ampere
i2 = i-i1                //current in ampere
i21 = (r1*i)/(r1+r2)       //current in ampere
i3 = i                      //current in ampere
i31 = i1+i2                  //current in ampere

//Results
printf("I1 = %d A \n",i1)
printf("I2 = %d A \n",i2)
printf("I2 = %d A \n",i21)
printf("I3 = %d A \n",i3)
printf("I3 = %d A \n",i31)
