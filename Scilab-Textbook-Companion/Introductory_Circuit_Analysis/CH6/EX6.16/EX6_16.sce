//Chapter 6, Example 6.16
clc
//Variable Declaration
i1 = 10                    //current in ampere
i2 = 12                    //current in ampere
i5 = 8                     //current in ampere

//Calculation
i7 = i1
i3 = i2-i1               //current in ampere
i4 = i2-i5               //current in ampere
i6 = i4-i3               //current in ampere
i71 = i5+i6               //current in ampere
//Results
printf("I7 = %d A \n",i7)
printf("I3 = %d A \n",i3)
printf("I4 = %d A \n",i4)
printf("I6 = %d A \n",i6)
printf(" %d A = %d A \n",i7,i71)
