//Chapter 10, Example 10.9
clc
//Variable Declaration
r1 = 2.2*10^3                 //resistance in ohms
r2 = 1.2*10^3                 //resistance in ohms
c = 3.3*10^-6                 //capacitance in farad
e = 24                        //voltage
vf = 24                       //voltage
vi = 4                        //voltage across capapcitor

//Calculation
t = (r1+r2)*c                 //time constant
vc = (vi-vf)                  //Vc when switch close
im = (e-(vf+vc))/(r1+r2)       //current in amperes
ic = im                       //current during the transient peroid


//for plotting graph
x1 = 0 : 0.001 : (5*t)
y1=vf-(-vc*exp(-x1/t))
i1=(im*exp(-x1/t))
subplot(221)
plot(x1, y1)
xlabel("t");
ylabel("vc (V)");
subplot(222)
plot(x1, i1)
xlabel("t");
ylabel("ic (mA)");


//Results
printf("a. vc = %dV %dV(e^-t/(11.22*10^-3ms)) \n",vf,vc)
printf("b. ic = %.2fmA(e^-t/(11.22*10^-3ms)) \n",ic*10^3)
