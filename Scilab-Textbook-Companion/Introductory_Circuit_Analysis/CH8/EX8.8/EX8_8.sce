//Chapter 8, Example 8.8
clc
//Variable Declaration
i1 = 4                    //current in ampere
r1 = 3                    //resistance in ohm
e2 = 5                    //voltage
r2 = 2                    //resistance in ohm

//Calculation
es = i1*r1                //by ohm's law
rs = r1                   //equal
i2 = (es+e2)/(rs+r2)

//Results
printf("I2 = %.1f A ",i2)
