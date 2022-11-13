//Chapter 6, Example 6.14
clc
//Variable Declaration
i = 5                         //entering current in ampere
i2 = 4                        //leaving current in ampere

//Calculation
i1 = i-i2                     //applying KCL, in ampere
i3 = i1                         // in ampere
i4 = i2                         // in ampere
i5 = i3+i4                   //applying KCL, in ampere
//Results
printf("I1 = %d A \n",i1)
printf("I3 = %d A \n",i3)
printf("I4 = %d A \n",i4)
printf("I5 = %d A",i5)
