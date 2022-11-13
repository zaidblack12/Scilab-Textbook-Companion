//Chapter 11, Example 11.9
clc
//Variable Declaration
n = 100                         //number of turns
i = 4                           //in ampere
ig = 0.001                      //in meter
uo = 12.56*10^-7                //permeability
hcore = 850                     //in At/m
lcore = 0.16                    //in meter
a = 0.003                       //area in meter square
hcore1 = 1500                   //in At/m
lcore1 = 0.16                   //in meter

//Calculation
hg = (n*i)/ig                   //in At/m
bg = uo*hg                      //in T
o = bg*a                        //flux in Wb
ni1 = (hcore*lcore)+(hg*ig)          //applying Ampere's circuital law
o1 = (1-0.3)*o                       //magnetic flux
b = o1/a                            //in T
hgig = (7.96*10^5)*b*ig             //in At/m
ni = (hcore*lcore)+(hgig)            //in At
hga = n*i                           //in At

//Results
printf("NI = %.2f At > %d At \n",ni,hga)
printf("O = %.3f x 10^-3 Wb",o1*10^3)
