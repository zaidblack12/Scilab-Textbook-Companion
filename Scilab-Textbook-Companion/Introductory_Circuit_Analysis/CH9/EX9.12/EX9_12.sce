//Chapter 9, Example 9.12
clc
//Variable Declaration
r1 = 5                     //resistance in ohms
r2 = 4                     //resistance in ohms
i = 10                     //current in amperes

//Calculation
rn = r1+r2                //total resistance in ohms
in = (r1*i)/(r1+r2)       //applying the current in amperes divider rule

//Results
printf("Rn = %d ohm \n",rn)
printf("In = %.3f A",in)
