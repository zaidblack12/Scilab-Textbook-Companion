//Chapter 13, Example 13.24
clc
//Variable Declaration
v1 = 20                     //in volts
v2 = 25                     //in volts
vm1 = v1                     //in volts
vm2 = 15                     //in volts

//Calculation
m = 1.11*v1                     //in volts
vr1 = 0.707*vm1                     //in volts
vdc = vr1                     //in volts
vr2 = 0.707*vm2                     //in volts
//Results
printf("Meter indication = %.1f V \n",m)
printf("Vrms = %.2f V \n",vr1)
printf("Vrms = Vdc = %d V \n",vdc)
printf("Vrms = %.1f V \n",vr2)
