//Chapter 13, Example 13.19
clc
//Variable Declaration
a = 0.707                  //in volts
b = 12*10^-3                //in milliampere
c = 169.73                  //in volts

//Calculation
i = a*b                       //in milliampere
v = a*c                       //in volts
//Results
printf("a. Irms = %.3f mA \n",i*10^3)
printf("b. Irms = %.3f mA \n",i*10^3)
printf("c. Vrms = %d mA ",v)
