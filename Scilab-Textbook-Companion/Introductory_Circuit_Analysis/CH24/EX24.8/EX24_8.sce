//Chapter 24, Example 24.8
clc
//Initialisation
vi=2                //voltage in mV
e=8                //voltage in mV
r=100*10**3             //resistance in ohm
c=10**-6               //capacitance in farad


//Calculation
tau=r*c                   //time constant
vr=e-vi                //voltage
irm=vr/r                //current in amperes

//Result
printf("(a) Vc = %d V %d V e^(-t/%.f ms) \n",e,(vi-e),tau*1000)
printf("(b) Irmax = %.2f mA e^(-t/%.f ms)",irm*1000,tau*1000)


//Graph
x1=0:0.1:0.8
vc=e+(vi-e)*exp(-x1/tau)
ic=irm*exp(-x1/tau)
scf(221)
plot(x1,vc)
xlabel("t(s)")
ylabel("vc(V)")
xtitle("Vc for the network of Fig. 24.20.")
scf(222)
plot(x1,ic)
xlabel("t(s)")
ylabel("ic (mA)")
xtitle("ic for the network of Fig. 24.20.")
