 //Chapter 10, Example 10.5
clc
//Variable Declaration
r = 8000                   //resistance in ohms
e = 40                     //voltage
c = 4*10^-6                //capacitor in farad
m = -1/(32*10^-3)

//Calculation
t = r*c                   //time constant
vc = e                    //in volts
ic = e/r                    //in ampere
vr =  e                   //in volts
b = 5*t                  //time constant

//for plotting graph
x1 = 0 : t : 1
y1=vc*(1- exp(-x1/t))
i1=ic*(1- exp(-x1/t))
vr1=vc*(exp(-x1/t))

subplot(221)
plot(x1, y1)
xlabel("t");
ylabel("vc (V)");
subplot(222)
plot(x1, i1)
xlabel("t");
ylabel("ic (mA)");
subplot(223)
plot(x1, vr1)
xlabel("t");
ylabel("vR (V)");

//Results
printf("a. t = %d ms \n",t*10^3)
printf("   Vc = %d*(1-e^-t/(32*10^-3)) \n",vc)
printf("   ic = (%d x 10^-3)*(e^-t/(32*10^-3)) \n",ic*1000)
printf("   vr = %d*(e^-t/(32*10^-3)) \n",vr)
printf("b = %d ms",b*10^3)
