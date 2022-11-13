//Chapter 9, Example 9.5
clc
//Variable Declaration
r1 = 2                        //resistance in ohms
r2 = 4                        //resistance in ohms
e1 = 12                       //voltage
e2 = 6                        //voltage
i = 3                         //current in amperes


//Calculation
i11 = e1/(r1+r2)             //effect of the 12-V source
i21 = e2/(r1+r2)             //effect of the 6-V source
i23 = (r2*i)/(r1+r2)         //applying the current divider rule, in amperes
i1 = i21+i23-i11                      //current in amperes

//Results
printf("I1 = %d A \n",i1)
