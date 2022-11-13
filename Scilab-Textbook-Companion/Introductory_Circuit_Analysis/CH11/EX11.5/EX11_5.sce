//Chapter 11, Example 11.5
clc
//Variable Declaration
o = 1.5*10^-5                 //magnetic flux in  Wb
a = 0.15*10^-3                //area in square meter 
habcda = 20                    //in At/m
i1 = 2                        //primary current in  ampere
n1 = 60                       //number of turn in 1st winding
n2 = 30                       //number of turn in 2nd winding
labcda  = 0.16                //in meter

//Calculation
b = o/a                                //flux density
i2 = ((n1*i1)-(habcda*labcda))/n2      //secondary current

//Results
printf("I2 = %.2f A \n",i2)
