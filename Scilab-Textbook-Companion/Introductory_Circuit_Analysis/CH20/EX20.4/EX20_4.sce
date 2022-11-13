//Chapter 20, Example 20.4
clc

//Variable Declaration
bw = 200                    //bandwidth in hertz
fs = 2800                   //frequency in hertz
c = 101.5*10^-9             //capacitance in nanofarad
imax = 200*10^-3            //max current in milliampere


//Calculation
qs = fs/bw                   //unit
l = 1/(4*%pi*%pi*fs*fs*c)     //inductance in mH
xl = 2*%pi*fs*l                //in ohm
r = xl/qs                      //resistance in ohm
e = imax*r                     //in volts
//Results
printf("a. BW = %d Hz \n",bw)
printf("   Qs = %d \n",qs)
printf("b. L = %.3f mH \n",l*10^3)
printf("   R = %d ohm \n",r)
printf("c. E = %d V \n",e)
