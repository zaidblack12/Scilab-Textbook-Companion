//Chapter 14, Example 14.5
clc
//Variable Declaration
w = 400                          //in rad/s
c = 1*10^-6                      //capacitance in microfarad
vm = 30                          //voltage in volts


//Calculation
xc = 1/(w*c)                     //capacitance reactance
im = vm/xc                       //current in ampere

//Results
printf("i = %d x 10^-3 sin(400t + 90degree)",im*10^3)
