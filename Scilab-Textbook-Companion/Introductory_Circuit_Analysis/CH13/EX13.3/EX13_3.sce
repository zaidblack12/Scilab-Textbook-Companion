
//Chapter 13, Example 13.3
clc
//Variable Declaration 
d = 4                     //division
t= 50*10^-6               //time in microsecond
d1 = 2                     //division
v = 0.1                    //in volts

//Calculation
t1 = d*t                  //time in microsecond
f = (1/t1)                //frequency in hertz
vm = d1*v                 //in volts

//Results
printf("T = %d us \n",t1*10^6)
printf("f = %d kHz \n",f/10^3)
printf("Vm = %.1f V \n",vm)
