//Chapter 18, Example 18.21
clc
//Variable Declaration
rth = 4                        //reistance in ohms
xth = 7                        //in ohms
Xload = 4                      //load resistance in ohms
eth = 20                       //source voltage in volts
//Calculation
rl = sqrt((rth*rth)+ ((xth-Xload)*(xth-Xload)))  //load resistance in ohms
rav = (rth+rl)/2             //resistance in ohms
p = (eth*eth)/(4*rav)        //power in watt
pmax = (eth*eth)/(4*rth)     //power in watt
//Results
printf("RL = %d ohm \n",rl)
printf("Rav = %.1f ohm \n",rav)
printf("P = %.2f W \n",p)
printf("Pmax = %d W \n",pmax)
