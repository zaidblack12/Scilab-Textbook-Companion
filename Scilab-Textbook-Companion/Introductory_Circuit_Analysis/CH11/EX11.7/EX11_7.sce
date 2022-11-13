//Chapter 11, Example 11.7
clc
//Variable Declaration
o2 = 1.5*10^-4               //magnetic flux in Wb
a = 6*10^-4                 //area in square meter
hbcde = 40                    //in At/m
ibcde = 0.2                   //in meter
ibe = 0.05                    //in meter
b1 = 0.97                   //tesla in T
hefab = 400                   //in At/m
iefab = 0.2                   //in meter
n = 50                      //number of turns
h1 = 40                      //in At/m
uo = 12.57*10^-7             //megnetic permeability
h2 = 160                      // in At/m
b3  = 0.25                  //tesla in T

//Calculation
b2 = o2/a                     //flux density in T
hbe = (hbcde*ibcde)/ibe       //in At/m
o1 = b1*a                     //flux in Wb
ot = o1+o2                    //flux in Wb
b = ot/a                     //flux density in T
i = ((hefab*iefab)+(hbe*ibe))/n     //in ampere
u = b3/h1                           //permeability
ur = u/uo                           //permeability
u1  = b1/h2                           //permeability
ur1 = u1/uo                           //permeability
u4 = b/hefab                           //permeability
ur2 = u4/uo                           //permeability

//Results
printf("I = %.2f A \n",i)           //required curent 
printf("Ur = %.1f \n",ur)
printf("For section be, Ur = %d \n",ur1)
printf("For section efab, Ur = %.2f \n",ur2)
