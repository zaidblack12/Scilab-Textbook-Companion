//Chapter 26, Example 26.2, page 1154
clc
//Initialisation
eg=2                        //in Volt
eo=1.92                //in Volt
rz=2*10**3                      //in Ohms

//Calculation
vr=eg-eo                //in Volt
i=vr/rz                //in Ampere
zo=eo/i                     //in Ohms

//Result
printf("Output Impedance, Zi = %.1f kOhm",zo/1000)
