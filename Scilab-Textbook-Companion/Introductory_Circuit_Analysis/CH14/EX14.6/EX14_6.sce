//Chapter 14, Example 14.6
clc
//Variable Declaration
w = 500                         //in rad/s
c = 100*10^-6                   //capacitance in micro farad
im = 40                         //current in ampere
  

//Calculation
xc = 1/(w*c)                    //capacitance reactance
vm  = im*xc                     //voltage in volts

//Results
printf("v = %d sin(500t - 30degree)",vm)
