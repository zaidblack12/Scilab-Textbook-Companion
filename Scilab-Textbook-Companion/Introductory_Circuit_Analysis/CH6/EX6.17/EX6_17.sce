//Chapter 6, Example 6.17
clc
//Variable Declaration
r1 = 4000                    //resistance
is = 6                       //source current in ampere
r2 = 8000                    //resistance in ohm

//Calculation
i2  = (r1*is)/(r1+r2)        //current in ampere

//Results
printf("I2 = %d A",i2)
