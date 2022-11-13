//Chapter 7, Example 7.7
clc
//Variable Declaration
e1 = 6                     //voltage 
e2 = 18                    //voltage 
r1 = 6                     //resistance in ohms
r2 = 5                     //resistance in ohms
r3 = 7                     //resistance in ohms
r4 = 6                     //resistance in ohms

//Calculation
v2 = -e1                      //in voltage
v1 = e2+e1                //total voltage 
i1 = v1/r1                //by ohm's law, in amperes
i2 = e1/r4                //by ohm's law, in amperes
i3 = e1/(r2+r3)           //by ohm's law, in amperes
i = i1+i2+i3              //applying KCL, in amperes

//Results
printf("V2 = %d V \n",v2)
printf("V1 = %d V \n",v1)
printf("I = %.1f A",i)
