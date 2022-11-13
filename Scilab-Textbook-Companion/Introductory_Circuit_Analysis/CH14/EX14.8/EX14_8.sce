//Chapter 14, Example 14.8
clc
//Variable Declaration
l = 200*10^-3                  //inductance in henry
r = 5*10^3                     //resistance in ohms
xl = 2*3.14*l                  //reactance inductor

//Calculation
f= r/xl                         //frequency in hertz

//Results
printf("f = %.2f kHz ",f*10^-3)
