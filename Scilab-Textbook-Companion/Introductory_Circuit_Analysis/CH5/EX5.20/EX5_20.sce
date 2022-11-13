//Chapter 5, Example 5.20
clc
//Variable Declaration
r1 = 2                      //resistor1
e = 10                      //supply voltage
r2 = 3                      //resistor2
r3 = 5                      //resistor3

//Calculation
rt = r1+r2+r3              //total resistance
vab = r1*e/rt              //voltage Vab
vb = (r2+r3)*e/rt          //voltage Vb
vc = 0                     //coltage Vc
vb1 = e-vab                //voltage Vb
//Results
printf("a. Vab = +%d V \n",vab)
printf("b. Vb = %d V \n",vb)
printf(" or Vb = %d V \n",vb1)
printf("c. Vc = ground potential = %d V",vc)
