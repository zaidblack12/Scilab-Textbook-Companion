//Chapter 9, Example 9.3
clc
//Variable Declaration
r1 = 12                //resistance in ohms
e = 36                 //voltage
r2 = 6                 //resistance in ohms
i = 9                  //source current in amperes

//Calculation
i21 = e/(r1+r2)            //current in amperes
i22 = (r1*i)/(r1+r2)      //applying current in amperes divider rule
i2 = i21+i22              //total current in amperes through the R2
p = i2*i2*r2              //power in watt to R2

//Results
printf("I2 = %d A \n",i2)
printf("P = %d W \n",p)
