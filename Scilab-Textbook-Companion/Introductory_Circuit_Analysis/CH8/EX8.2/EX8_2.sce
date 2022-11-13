//Chapter 8, Example 8.2
clc
//Variable Declaration
e = 12                      //voltage
r = 4                       //resistance in ohm
i = 7                       //current source in ampere

//Calculation
vs = e                       //voltage = Vs
i2 = e/r                    //by ohm's law, in amperes
i1 = i-i2                   //applying kirchoff's current law

//Results
printf("Vs = %d V \n",vs)
printf("I2 = %d A \n",i2)
printf("I1 = %d A",i1)
