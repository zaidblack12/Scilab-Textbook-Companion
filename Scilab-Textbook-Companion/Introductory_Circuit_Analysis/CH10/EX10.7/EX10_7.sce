//Chapter 10, Example 10.7
clc
//Variable Declaration
r1 = 100*10^3              //resistance in ohms
r2 = 200*10^3              //resistance in ohms
e = 10                     //voltage
c = 0.05*10^-6             //capacitance in farad
t3=0.045

//Calculation
vc = e                     //voltage across the capacitor
t = r1*c                   //time constant
ic = e/r1                  //current across the capacitor
t1 = r2*c                  //time constant
ic2 = -e/r2                 //in ampere


//for plotting graph
x1 = 0 : 0.01 : t3
x2 =  t3 : 0.01 : 1
y1=vc*(1-exp(-x1/t))
y2=vc*(exp(-x2/t1))
i1=ic*(exp(-x1/t))
i2=ic2*(exp(-x2/t1))

subplot(221)
plot(x1, y1)
xlabel("t")
ylabel("vc (V)")
xtitle('Vc Charging')
subplot(222)
plot(x2, y2)
xlabel("t")
ylabel("vc (V)")
xtitle('Vc Discharging')
subplot(223)
plot(x1, i1)
xlabel("t")
ylabel("ic (mA)")
xtitle('ic Charging')
subplot(224)
plot(x2, i2)
xlabel("t")
ylabel("ic (mA)")
xtitle('ic Discharging')

//Results
printf("a. vc = %d(1-e^-t/(5*10^-3)) \n",vc)
printf("b. ic = (%.1f x 10^-3)(e^-t/(5*10^-3)) \n",ic*10^3)
printf("c. vc = %d V \n",vc)
printf("   ic = %d A \n",ic)
printf("d. vc = %d(e^-t/(10*10^-3)) \n",vc)
printf("   ic = (%.2f x 10^-3)(e^-t/(10*10^-3)) \n",ic2*10^3)
