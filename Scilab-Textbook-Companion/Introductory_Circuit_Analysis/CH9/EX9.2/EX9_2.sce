//Chapter 9, Example 9.2
clc
//Variable Declaration
r1 = 24                     //resistance in ohms
r2 = 12                     //resistance in ohms
r3 = 4                      //resistance in ohms
e1 = 54                     //voltage
e2 = 48                     //voltage

//Calculation
rt = r1+(r2*r3)/(r2+r3)      //total resistance in ohms
i = e1/rt                    //current in amperes in loop
i31 = (r2*i)/(r2+r3)         //using current divider rule, in amperes
rt2 = r3+(r1*r2)/(r1+r2)     //total resistance in ohms
i33 = e2/rt2                 //current in amperes in loop
i3 = i33-i31                 //total current in amperes through R3

//Results
printf("I3 = %.1f A",i3)
