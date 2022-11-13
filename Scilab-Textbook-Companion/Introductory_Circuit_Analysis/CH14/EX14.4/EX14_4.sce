//Chapter 14, Example 14.4
clc
//Variable Declaration
w = 20                     //in rad/s
l = 0.5                    //inductance in henry
vm = 100                  //voltage in volts


//Calculation
xl = w*l                  //inductance reactance
im = vm/xl                //current in ampere

//Results
printf("i = %d sin(20t - 90degree)",im)
