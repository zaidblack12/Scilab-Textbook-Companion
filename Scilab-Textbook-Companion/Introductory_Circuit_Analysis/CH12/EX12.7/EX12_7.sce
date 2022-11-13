//Chapter 12, Example 12.7
clc
//Variable Declaration
r1 = 20000              //resistor1 in kohm 
r2 = 4000               //resistor2 in kohm
r3 = 16000              //resistor3 in kohm
l = 80                  //inductor in mH
e = 12                  //supply voltage
n = 2                   //number of turns

//Calculation
rth = r1/n                      //by thevenin theorem
to = l/rth                      //time in microsecond
eth = (r2+r3)*e/(r1+r2+r3)      //applying voltage divider
im = eth/rth                   //current in milliampere
il = im                         //load current
vl = eth                        //load voltage

//Results
printf("a. iL = (%.1f*10^-3)(1-e^-t/(%d*10^-6)) \n",il*10^3,to*10^3)
printf("    VL = %de^-t/(%d*10^-6) \n",vl,to*10^3)



//Graph
x1=0:(1*10**-3):(50*10**-3)
vc=vl*(exp(-x1/to))                  //for VL
ic=il*(1-exp(-x1/to))               //for iL

subplot(221)
plot(x1,vc)
xlabel("t(s)")
ylabel("VL (V)")
xtitle("VL for the R-L network")
subplot(222)
plot(x1,ic)
xlabel("t(s)")
ylabel("iL (mA)")
xtitle("iL for the R-L network\")
