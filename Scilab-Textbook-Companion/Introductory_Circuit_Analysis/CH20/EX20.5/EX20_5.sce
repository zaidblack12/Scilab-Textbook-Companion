//Chapter 20, Example 20.5
clc

//Variable Declaration
e = 120                      //in volts
p = 16                       //power in watt
ws = 10^5                    //in rad/s

//Calculation
r = (e*e)/p                  //resistance in ohm
fs = ws/(2*%pi)              //frequency in hertz
bw = 0.15*fs                 //bandwidth in hertz
l = r/(2*%pi*bw)             //inductance in mH
c = 1/ (4*%pi*%pi*fs*fs*l)   //capacitance in nF
xl = 2*%pi*fs*l              //in ohm
qs = xl/r                    // unit
a = 1/qs                     //unit

//Results
printf("a. P = %d ohm \n",r)
printf("b. BW = %.2f Hz \n",bw)
printf("c. L = %d mH \n",l*10^3) 
printf("   C = %.2f nF \n",c*10^9)
printf("d. Qs = %.2f \n",qs)
printf("e. BW/fs = %.2f \n",a)
