//Chapter 24, Example 24.4
clc
//Initialisation
div1=3.2          //no of division
ms=1              //ms per divisions
div2=0.8          //no of division


//Calculation
T=div1*ms           //timeperiod in microsec
tp=div2*ms            //frequency
prf=1/T             //timeperiod in microsec
duty=(tp/T)*100          //duty cycle

//Result
printf("(a) Pulse repition Frequency, prf = %.2f Hz \n",prf*1000)
printf("(b) Duty Cycle = %.2f percent \n",duty)
