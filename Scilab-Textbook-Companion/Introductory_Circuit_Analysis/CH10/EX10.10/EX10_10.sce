//Chapter 10, Example 10.10
clc
//Variable Declaration
r1 = 60*10^3              //resistance in ohms
r2 = 30*10^3              //resistance in ohms
r3 = 10*10^3              //resistance in ohms
vi = 5.44                 //voltage
vf = 0                 //voltage
c=0.2*10**-6                 //capacitance in farad
e=21                      //emf in voltage

//Calculation
rth = ((r1*r2)/(r1+r2))+r3   //applying tevenin's theorem
eth = r2*e/(r2+r1)            //in volts
t=rth*c                       //time constant
vc1 = eth                    //vc at switch position1
ic = eth/r2                  //ic at switch position1
vc = vf +(vi-vf)            //vc at switch position2
ii = vc/r3                    //current in amperes
t1=r3*c                           //time constant
ic1 = -ii                   //ic at switch position2

//for plotting graph
x1 = 0 : 0.001 : 0.035
x2 =  0 : 0.0005 : 0.05
y1=eth*(1-exp(-x1/t))
y2=vc*(exp(-x2/t1))
i1=ic*(exp(-x1/t))
i2=ic1*(exp(-x2/t1))

subplot(221)
plot2d(x1, y1)
xlabel("t")
ylabel("vc (V)")
xtitle('Vc Charging')
subplot(222)
plot2d(x2, y2)
xlabel("t")
ylabel("vc (V)")
xtitle('Vc Discharging')
subplot(223)
plot2d(x1, i1)
xlabel("t")
ylabel("ic (mA)")
xtitle('ic Charging')
subplot(224)
plot2d(x2, i2)
xlabel("t")
ylabel("ic (mA)")
xtitle('ic Discharging')

//Results
printf("a. vc = %d(1-e^-t/6ms) \n",vc1)
printf("   ic = (%.3f x 10^-3)(e^-t/6ms) \n",ic*10^3)
printf("b. vc = %.2f(e^-t/2ms) \n",vc)
printf("   ic = (%.2f x 10^-3)(e^-t/2ms) \n",ic1*10^3)
