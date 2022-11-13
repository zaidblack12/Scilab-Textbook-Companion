//Chapter 11, Example 11.4
clc
//Variable Declaration
o = 3.5*10-4                  //magnetic flux in Wb
a = 6.452*10^-4               //area in square meter
hefab = 70                    //magnetizing force sheet steel in At/m
hbcde = 1600                  //magnetizing force cast iron in At/m
n = 50                        //number of turns

//Calculation
lefab = 4+4+4                 //length of the material in inch
lbcde = 0.5+4+0.5             //length of the material in inch
lbcde1 = lbcde*(1/39.37)       //in meters
lefab1 = lefab*(1/39.37)        //in meters
b = o/a                        //flux density in T
q = (hefab*lefab1)+(hbcde*lbcde1)     //in At
i = q/n                        //applying ampere's circuital law

//Results
printf("I = %.2f A \n",i)
