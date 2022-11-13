//Chapter 9, Example 9.1
clc
//Variable Declaration
rsc = 0 
r1 = 6                //resistance in ohms
e = 30                //voltage
r1 = 6                //resistance in ohms  


//Calculation
i1 = (rsc)/(rsc+r1)          //applied the current divider rule, in amperes
i11 = e/r1                  //applying ohm's law
i = i1+i11                  //current in amperes

//Results
printf("I = %d A \n",i)
