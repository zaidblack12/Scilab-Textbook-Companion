//Chapter 12, Example 12.5
clc
//Variable Declaration
e = 16                  //battery volts
r1 = 2.2*10^3           //resistance1 in kohm
r2 = 6.8*10^3           //resistance2 in kohm
l = 100*10^-3           //inductance in mH
ii = 4*10^-3            //loade current in mA  

//Calculation
rt = r1+r2             //total resistance
if = e/(r1+r2)         //in mA
to = l/rt              //time constant in microsecond
il = if                //current through the coil-
il2 = ii-if            //once the switch is closed
vr1 = ii*r1             //voltage of resistance1
vr2 = ii*r2             //voltage of resistance2
vm = e-vr1-vr2            //voltage across the coil
vl = vm
    
//Results
printf("a. iL = %.2f mA",il*10^3)
printf(" + %.2f mAe^-t/%.2fus \n",il2*10^3,to*10^6)
printf("b. VL = %d*e^-t/%.2fus \n",vl,to*10^6)
printf("c. iL = %.2f mA ",il*10^3)
