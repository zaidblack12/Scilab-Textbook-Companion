//Chapter 12, Example 12.8
clc
//Variable Declaration
r1 = 2.2*10^3             //resistor1 in kohm
r2 = 8.2*10^3             //resistor2 in kohm
r3 = 1000                 //resistor3 in kohm
i = 12*10^-3              //sources current
e = 6                     //voltage
l = 680*10^-3             //inductor in mH
i = 12*10^-3              //current source in mA
E = 26.4                  //voltage

//Calculation
ii = -e/r3               //using ohm's law
rth = r1+r2              //applying thevenin's theorem
eth = i*r1               //in volts
if = E/rth               //in milliampere
to = l/rth               //time constant
il = if                  //in milliampere
il1 = ii-if                 //in milliampere

//Results
printf("a. ii = %d mA \n",ii*10^3)
printf("b. iL = %.2f mA %.2fmAe^-t/(%.2fus) ",il*10^3,il1*10^3,to*10^6)

//Graph
x1=0:(0.1*10**-3):(0.5*10**-3)
ic=il+(il1*exp(-x1/to))               //for iL
plot(x1,ic)
xlabel("t(s)")
ylabel("iL (mA)")
xtitle("The current iL for the network")

