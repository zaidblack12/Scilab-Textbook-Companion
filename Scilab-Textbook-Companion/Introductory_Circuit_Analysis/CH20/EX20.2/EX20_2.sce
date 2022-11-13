//Chapter 20, Example 20.2
clc

//Variable Declaration
fs = 4000                   //frequency in hertz
bw = 400                    //bandwidth in hertz
r = 10                      //resistance in ohm
xc = 100                    //in ohms

//Calculation
qs = fs/bw                   //unit
xl = qs*r                    //in ohms
l = xl/(2*%pi*fs)            //inductance in millihenry
c = 1/(2*%pi*fs*xc)          //capacitance in microfarad
//Results
printf("a. Qs = %d \n",qs)
printf("b. XL = %d ohms \n",xl)
printf("c. L = %.2f mH \n",l*10^3)
printf("   C = %.3f uF \n",c*10^6)
