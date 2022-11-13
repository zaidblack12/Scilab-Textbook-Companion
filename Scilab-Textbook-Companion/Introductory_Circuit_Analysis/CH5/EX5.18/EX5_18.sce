//Chapter 5, Example 5.18
clc
//Variable Declaration
r2 = 25                    //resistance 
r1 = 20                    //resistance in ohm
e1 = -19                   //supply voltage in V
e2 = 35                    //supply voltage in V
//Calculation
r = r1+r2                   //total resistance in ohm
e = e2-e1                   //total supply voltage in V
i = e/r                     //current in ampere A
vab = i*r2                  //in voltage Vab
vcb = -i*r1                 //in voltage Vcd
vc = e1                     //in voltage Vc

//Results
printf("Vab = %d V \n",vab)
printf("Vcb = %d V \n",vcb)
printf("Vc = %d V \n",vc)
