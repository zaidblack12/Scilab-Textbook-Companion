//Chapter 9, Example 9.6
clc
//Variable Declaration
e1= 9                  //voltage
r1 = 3                 //resistance in ohms
r2 = 6                 //resistance in ohms
rl1 =2                 //resistance in ohms
rl2 = 10                //resistance in ohms
rl3 = 100                //resistance in ohms

//Calculation
rth = (r1*r2)/(r1+r2)          //R1 and R2 are parallel
eth = (r2*e1)/(r2+r1)          //applying voltage divider rule
il1 = eth/(rth+rl1)            //RL = 20 ohm
il2 = eth/(rth+rl2)            //RL = 10 ohm
il3 = eth/(rth+rl3)            //RL = 100 ohm

//Results
printf("Rth = %d ohm \n",rth)
printf("Eth = %d V \n",eth)
printf("IL = %.1f A \n",il1)
printf("IL = %.1f A \n",il2)
printf("IL = %.3f A \n",il3)
