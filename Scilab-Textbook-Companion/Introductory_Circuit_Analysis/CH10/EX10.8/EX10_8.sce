//Chapter 10, Example 10.8
clc
//Variable Declaration 
r1 = 5000                 //resistance in ohms
e = 20                    //voltage
r2 = 1000                 //resistance in ohms
r3 = 3000                 //resistance in ohms
c = 10*10^-6              //capacitance in farad


//Calculation
vc = e                    //voltage across capacitor
t1 = (r1+r3)*c            //time constant
t2 = (r2+r3)*c            //time constant
ic = e/(r1+r3)            //current across capacitor
vc1 = 0.632*e             //Vc when switch at position2
ic1 = -vc1/(r2+r3)        //Ic when switch at position2


//for plotting graph
x1 = 0 : 0.001 : t1
x2 = t1 : 0.001 : 0.4
y1=vc*(1- exp(-x1/t1))
y2=vc1*(exp(-x2/t2))
i1=ic*(exp(-x1/t1))
i2=ic1*(exp(-x2/t2))

subplot(221)
plot(x1, y1)
plot(x2, y2)
xlabel("t")
ylabel("vc (V)")

subplot(222)
plot(x1, i1)
plot(x2, i2)
xlabel("t")
ylabel("ic (mA)")

//Results
printf("a. vc = %d(1-e^-t/(80*10^-3)) \n",vc)
printf("b. ic = (%.1f x 10^-3)(e^-t/(80*10^-3)) \n",ic*10^3)
printf("c. vc = %.2f(e^-t/(40*10^-3)) \n",vc1)
printf("ic = %.2f x 10^-3(e^-t/(40*10^-3)) \n",ic1*10^3)
