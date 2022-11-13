//Chapter 12, Example 12.6
clc
//Variable Declaration
r1 = 2000             //resistor1 in kohm
r2 = 3000             //resistor2 in kohm
l = 4                 //inductor in henry
e = 50                //battery voltage


//Calculation
to = l/r1             //time constant in ms
vl = e                //load voltage
im = e/r1             //current in milliampere
il = im               //load current
vr1 = e               //voltage across r1
vr2 = vr1             //voltage across r2
to1 = l/(r1+r2)
vi = (1+(r2/r1))*e    //voltage in volts
vl1 = -vi             //voltage at switch open
im1 = e/r1            //current in milliampere
il1 = im1             //current at switch open
vr11 = e              //voltage across at r1 switch open
vr22 = (-r2/r1)*e     //voltage across at r2 switch open

//Results
printf("a. VL = %d*e^-t/(%d*10^-3) \n",vl,to*10^3)
printf("   iL = %d*10^-3(1-e^-t/%d*10^-3) \n",il*10^3,to*10^3)
printf("   VR1 = %d(1-e^-t/%d*10^-3) \n",vr1,to*10^3)
printf("   VR2 = %d V\n",vr2)
printf("b. iL = %.3fe^-t/(0.8*10^-3) \n",il)
printf("   VL = -%de^-t/(%.1f*10^-3) \n",vi,to1*10^3)
printf("   VR1 = %de-t/(%.1f*10^-3) \n",vr11,to1*10^3)
printf("   VR2 = %de-t/(%.1f*10^-3)",vr22,to1*10^3)
