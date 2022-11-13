//Chapter 9, Example 9.13
clc
//Variable Declaration
r1 = 4                       //resistance in ohms
r2 = 6                       //resistance in ohms
r3 = 9                       //resistance in ohms
r4 = 10                      //resistance in ohms
e1 = 7                       //voltage
e2 = 12                      //voltage
i = 8                        //current source in amperes

//Calculation
rn = (r1*r2)/(r1+r2)         //R1 and R2 are parallel
in1= e1/r1                   //current in amperes
in2 = i                     //short circuited
in = in2-in1                //in amperes

//Results
printf("Rn = %.1f ohm \n",rn)
printf("In = %.2f A \n",in)
