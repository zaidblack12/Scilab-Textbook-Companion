//Chapter 24, Example 24.3
clc
//Initialisation
t1=15          //timeperiod in microsec
t2=6           //timeperiod in microsec
t3=8           //timeperiod in microsec


//Calculation
T=t1-t2           //timeperiod in microsec
prf=1/T           //frequency
tp=t3-t2          //timeperiod in microsec
duty=(tp/T)*100          //duty cycle

//Result
printf("(a) Pulse repition Frequency, prf = %.2f kHz \n",prf*1000)
printf("(b) Duty Cycle = %.2f percent \n",duty)
