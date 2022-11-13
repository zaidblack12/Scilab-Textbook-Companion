//Chapter 5, Example 5.4
clc
//Variable Declaration
e1 = 16                      //supply voltage1
v2 = 4.2                     //voltage2
e2 = 9                       //supply voltage2
e = 32                       //supply voltage
v = 12                       //voltage
v3 = 6                       //voltage of R2
v4 =14                       //voltage of R3
//Calculation
v1 = e1-v2-e2                //voltage1
vx = e-v                     //unknown voltage
vx = v3+v4                   //unknown voltage
//Results
printf("V1 = %.1f V \n",v1)
printf("Vx = %d V \n",vx)
printf("Vx = %d V",vx)
