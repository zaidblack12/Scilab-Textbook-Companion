//Chapter 6, Example 6.1
clc
//Variable Declaration
g1 = 1/3                  //conductance in seimens
g2 = 1/6                  //conductance in seimens

//Calculation
gt = g1+g2                  //total conductance in seimens
rt = 1/gt                   //resistance in ohm

//Results
printf("Gt = %.1f S \n",gt)
printf("Rt = %d ohm",rt)
