//Chapter 14, Example 14.9
clc
//Variable Declaration
l = 5*10^-3                    //inductance in henry
c = 0.1*10^-6                  //capacitance in farad
//calculation 
xl = 2*3.14*l                  //inductance reactance
xc = 1/(2*3.14*c)              //capacitance reactance
f= 1/(2*3.14*sqrt(l*c))        //frequency in hertz

//Results
printf("f = %.2f kHz",f*10^-3)
