//Chapter 12, Example 12.4
clc
//Variable Declaration
l = 4                 //inductance in H
r1 = 2000             //resistor1 in ohm
e = 50                //voltage  

//Calculation
to = l/r1            //in millisecond
im = e/r1            //in milliAmperea
il = im              //load current
vl = e               //load voltage

//Results
printf("iL = (%d x 10^-3)(1-e^-t/(%dx10^-3)) \n",il*10^3,to*10^3)
printf("VL = %de^-t/(%dx10^-3) \n",vl,to*10^3)
