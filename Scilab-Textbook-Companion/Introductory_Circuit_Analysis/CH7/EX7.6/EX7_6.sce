//Chapter 7, Example 7.6
clc
//Variable Declaration
r1 = 5                        //resistance in ohms
r2 = 3                        //resistance in ohms
r3 = 6                        //resistance in ohms
r4 = 2                        //resistance in ohms
e = 12                        //voltage

//Calculation
v1 = (r1*e)/(r1+r2)           //voltage divider rule
v3 = (r3*e)/(r3+r4)           //voltage divider rule
vab = v3-v1                   //applying KVL, in voltage
i1 = v1/r1                    //by ohm's law, in amperes
i3 = v3/r3                    //by ohm's law, in amperes
is = i1+i3                    //applying KCL, in amperes

//Results
printf("a. V1 = %.1f V \n",v1)
printf("   V3 = %d V \n",v3)
printf("   Vab = %.1f V \n",vab)
printf("b. Is = %d A \n",is)
