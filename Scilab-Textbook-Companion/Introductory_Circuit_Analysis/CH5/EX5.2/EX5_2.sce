//Chapter 5, Example 5.2
clc
//Variable Declaration
N = 3                     //number of resistance
R1 = 7                    //resistance1
R2 = 4                    //resistance2
E = 50                    //supply voltage
//Calculation 
Rt = N*R1+R2              //total resistance
I = E/Rt                  //current in ampere
V2 = I*R2                 //voltage2
//Results
printf("RT = %d ohm \n",Rt)
printf("I = %d A \n",I)
printf("V2 = %d V",V2)
