//Chapter 14, Example 14.3
clc
//Variable Declaration
w = 377                       //in rad/s
l = 0.1                       //inductance in ohms
im = 10                       //current of (a)
im1= 7                        //current of (b)

//Calculation
xl = w*l                     //inductance reactance
vm = im*xl                   //voltage of (a)
vm1 = im1*xl                 //voltage of (b)

//Results
printf("a. v = %dsin(377t+90degree) \n",vm)
printf("b. v = %.1fsin(377t+20degree)",vm1)
