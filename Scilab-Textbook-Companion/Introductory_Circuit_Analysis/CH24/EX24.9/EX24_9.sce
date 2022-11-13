//Chapter 24, Example 24.9
clc
//Initialisation
vi=-4                    //voltage in mV
vf=10                    //voltage in mV
r=1*10**3             //resistance in ohm
c=0.01*10**-6               //capacitance in farad


//Calculation
tau=r*c                   //time constant
t=-tau*log(vf/(vf-vi))     //time in seconds

//Result
printf("Vc = %d mV %d mV e^(-t/%.f ms) \n",vf,(vi-vf),tau*10**6)
printf("t = %.2f us",(t*10**6))

//Graph
x1=0:(10**-6):(80*10**-6)
vc=vf+(vi-vf)*exp(-x1/tau)
plot(x1,vc)
xlabel("t(s)")
ylabel("vc(V)")
xtitle("Vc for the network of Fig. 24.22.")
