//Chapter 24, Example 24.5
clc
//Initialisation
div1=2.6          //no of division
ms=10              //microsec per divisions
div2=0.2          //no of division



//Calculation
T=div1*ms           //timeperiod in microsec
tp=div2*ms            //frequency
prf=1/T             //timeperiod in microsec
duty=(tp/T)*100          //duty cycle

//Result
printf("(a) Pulse repition Frequency, prf = %d Hz \n",prf*10**6)
printf("(b) Duty Cycle = %.2f percent \n",duty)
