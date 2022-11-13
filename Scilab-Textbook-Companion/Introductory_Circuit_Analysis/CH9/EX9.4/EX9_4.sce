//Chapter 9, Example 9.4
clc
//Variable Declaration
r1 = 6000                     //resistance in ohms
r2 = 12000                    //resistance in ohms
i = 6*10^-3                   //current in amperes
e = 9                         //voltage

//Calculation
i21 = (r1*i)/(r1+r2)          //current in amperes divider rule
i22 = e/(r1+r2)               //effect of 9-V voltage source
i2 = i21+i22                  //sum of the current in amperes

//Results
printf("I2 = %.1f mA",i2*1000)
