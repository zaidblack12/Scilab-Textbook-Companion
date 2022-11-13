//Chapter 11, Example 11.6
clc
//Variable Declaration
o = 0.75*10^-4                  //magnetic flux in  Wb
a = 1.5*10^-4                   //area in square meter
hcore = 280                     //H(cast steel) in  At/m
hg = 3.98*10^5                  //in At/m
icore = 100*10^-3               //in meter
ig = 2*10^-3                    //in meter
n = 200                         //number of turns

//Calculation
b = o/a                          //flux density
i = ((hcore*icore)+(hg*ig))/n    //in ampere

//Results
printf("I = %.2f A \n",i)
