//Chapter 10, Example 10.12
clc
//Variable Declaration
r1 = 6                    //resistance in ohms
r2 = 10                   //resistance in ohms
c = 500*10^-6             //capacitance in farad
i = 20*10^-3              //source current in ampere

//Calculation
rth = r1+r2                  //resistance in ohms
eth = i*r1                  //voltage
t = rth*c                   //time constant
vc = eth                  //voltage

//Results
printf("vc = %.2f(1-e^-t/8ms) \n",vc)
