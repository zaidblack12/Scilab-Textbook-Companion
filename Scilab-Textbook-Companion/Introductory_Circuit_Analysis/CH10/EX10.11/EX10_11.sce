//Chapter 10, Example 10.11
clc
//Variable Declaration
r2 = 5*10^3                //resistance in ohms
r1 = 7*10^3                //resistance in ohms
r3 = 18*10^3               //resistance in ohms
r4 = 2*10^3                //resistance in ohms
e = 120                    //voltage
c = 40*10^-6               //capacitance in farad
vi = 40                    //voltage across capacitor

//Calculation
eth = (r3*e)/(r3+r1+r4)                      //in volts
rth = ((r2+r3)*(r2+r3))/((r2+r3)+(r2+r3))     //resistance in ohms
t = rth*c                                     //time constant
vc = vi                               //Vc after closing switch

//Results
printf("vc = %dV - %dV(e^-t/0.44s) \n",eth,vc)
