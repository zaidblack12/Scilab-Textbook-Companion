//Chapter 5, Example 5.24
clc
//Variable Declaration
rint = 19.48                 //internal resistance in ohm
rl = 500                     //load resistor in ohm

//Calculation
vr = (rint/rl)*100            //voltage regulation in percent

//Results
printf("VR = %.1f percent",vr)
