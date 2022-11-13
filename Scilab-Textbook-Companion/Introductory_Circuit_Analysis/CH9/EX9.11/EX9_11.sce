//Chapter 9, Example 9.11
clc
//Variable Declaration
r1 = 3                        //resistance in ohms
r2 = 6                        //resistance in ohms
e = 9                         //voltage

//Calculation
rn = (r1*r2)/(r1+r2)         //R1 and R2 are parallel
in = e/r1                    //current in amperes

//Results
printf("Rn = %d ohm \n",rn)
printf("In = %d A",in)
