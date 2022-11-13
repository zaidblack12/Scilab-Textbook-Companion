//Chapter 10, Example 10.6
clc
//Variable Declaration
t = 32*10^-3               //time in seconds
e = 40                     //voltage
r = 8000                   //resistance in ohms

//Calculation
vc = e                       //voltage
ic = -e/r                    //in ampere
vr = -e                    //voltage

//for plotting graph
x1 = 0 : t : 1
y1=vc*(exp(-x1/t))
i1=ic*(exp(-x1/t))
vr1=-vc*(exp(-x1/t))

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
printf("   Vc = %d*(e^-t/(32*10^-3)) \n",vc)
printf("   ic = (%d x 10^-3)*(e^-t/(32*10^-3)) \n",ic*1000)
printf("   vr = %d*(e^-t/(32*10^-3)) \n",vr)
