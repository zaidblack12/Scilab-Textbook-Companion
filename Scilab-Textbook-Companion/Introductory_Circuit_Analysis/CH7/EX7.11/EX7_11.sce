//Chapter 7, Example 7.11
clc
//Variable Declaration
e = 72                    //emf in voltage
is = 50*10^-3             //current source in ampere
vr3 = 12                  //R3 voltage
vl1 = 60                  //RL1 voltage
vl2 = 20                  //RL2 voltage
ir1= 30*10^-3             //R1 current in ampere
ir2 = 20*10^-3            //R2 current in ampere
vr2 = 20                  //R2 voltage

//Calculation
r3 = vr3/is                  //resistance in ohms
vr1 = vl1-vl2                //voltage
r1 = vr1/ir1                 //resistance in ohms
r2 = vr2/ir2                 //resistance in ohms

//Results
printf("R3 = %d ohm \n",r3)
printf("R1  = %.2f Kohm \n",r1/1000)
printf("R2 =  %d kohm",r2/1000)
