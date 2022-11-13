//Chapter 11, Example 11.8
clc
//Variable Declaration
n = 60                          //numbers of turns
i = 5                           //in ampere
labcda = 0.3                    //in meter
b = 0.39                        //in T
a = 2*10^-4

//Calculation
habcda = (n*i)/labcda           //by Ampere's circuital law
o = b*a                         //magnetic flux in  Wb

//Results
printf("O = %.2f*10^-4 Wb",o*10^4)
