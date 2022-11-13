//Chapter 6, Example 6.2
clc
//Variable Declaration
g1 = 0.5                  //conductance in seimens
g2 = 1/10                  //conductance in seimens

//Calculation
gt = g1 + g2                  //total conductance in seimens
rt = 1/gt                   //resistance in ohm

//Results
printf("Gt = %.1f S \n",gt)
printf("Rt = %.3f ohm",rt)
