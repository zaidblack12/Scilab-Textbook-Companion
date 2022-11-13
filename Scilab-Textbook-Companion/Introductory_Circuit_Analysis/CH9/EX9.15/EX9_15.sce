//Chapter 9, Example 9.15
clc
//Variable Declaration
rs = 40*10^3                //resistance in ohms
in  =10*10^-3               //current in amperes source

//Calculation
rl = rs                    //load resistance in ohms
pl = (in*in*rs)/4          //maximum power in watt

//Results
printf("RL = %d kohm \n",rl/10^3)
printf("PLmax = %d W \n",pl)
