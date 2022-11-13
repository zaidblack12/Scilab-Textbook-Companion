//Chapter 26, Example 26.1, page 1153
clc
//Initialisation
eg=100*10**-3                //in Volt
ei=96*10**-3                //in Volt
rz=100                      //in Ohms

//Calculation
vr=eg-ei                //in Volt
i=vr/rz                //in Ampere
zi=ei/i                     //in Ohms

//Result
printf("Input Impedance, Zi = %.1f kOhm",zi/1000)
