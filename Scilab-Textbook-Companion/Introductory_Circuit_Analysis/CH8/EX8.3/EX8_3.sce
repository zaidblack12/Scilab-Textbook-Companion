//Chapter 8, Example 8.3
clc
//Variable Declaration
r2 = 1                   //resistance in ohms
i = 6                    //current in amperes
r1 = 2                   //resistance in ohms

//Calculation
i1 = (r2*i)/(r2+r1)       //applying the current divider rule
v1 = i1*r1                //by ohm's law, in volts
vs = v1+20                //applying kirchoff's current law

//Results
printf("I1 = %d A \n",i1)
printf("Vs = %d V",vs)
