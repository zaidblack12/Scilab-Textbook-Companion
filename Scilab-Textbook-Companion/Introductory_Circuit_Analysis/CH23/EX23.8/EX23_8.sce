//Chapter 23, Example 23.8
clc
//Variable Declaration
l1=1*10**-3                //inductance in henry
c1=0.01*10**-6         //capacitance in farad
r1=33               //resistance in ohm
r2=2               //resistance in ohm
vi=20*10**-3          //input voltage

//Calculation
fs=1/(2*3.14*sqrt(l1*c1))         //frequency in hertz
xl=2*3.14*fs*l1                   //inductive reactance
qs=xl/(r1+r2)                      //Q factor
bw=fs/qs                            //bandwidth in hertz
vomax=(r1*vi)/(r1+r2)               //max voltage
vo=0.707*vi*(r1/(r1+r2))              //voltage


//Insufficient data on textbook problem to plot graph
//graph
x=0:1000:fs*2
//ztp1=(((2*3.14*x*l1)/(r1+r2))**2)*r2
xl=2*3.14*x*l1
xc=1/(2*3.14*x*c1)
zs=sqrt((r2**2)+(xl-xc')**2)
vo1=(zs*vi)./(zs+r1)
plot2d(x,vo1)
xtitle('Passband response')
xlabel('f')
ylabel('Vo')


//Results
clc
printf('(a) fs = %.1f Hz \n',fs)
printf('Qs = %.2f \n',qs)
printf('BW = %.2f kHz \n',bw/1000)
printf('Vomax = %.2f mV \n', vomax*1000)
