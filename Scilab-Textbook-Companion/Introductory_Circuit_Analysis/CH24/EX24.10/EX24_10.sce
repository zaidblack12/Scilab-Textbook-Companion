//Chapter 24, Example 24.10
clc
//Initialisation
f=1000                  //frequency in hertz
r=5*10**3             //resistance in ohm
c=0.01*10**-6               //capacitance in farad
vi=0                    //for charging phasse, voltage
vf=10                    //voltage in mV
vi2=10                    //for discharging phasse, voltage in mV
vf2=0                    //voltage
t1=0                      //for charging phase for ic
vr=vf


//Calculation
t=1/f                  //time period in sec
tp=t/2                  //phase time in sec
tau=r*c                   //time constant in sec
irmax=vr/r                //current in milliampere

//Result
printf("(a) tp = %.1f ms \n",tp*10**3)
printf("tau = %.2f ms \n",tau*10**3)
printf("Therefore, tp = 10*tau = T/2 \n")
printf("(b)for charging phase,  Vc = %d mV(1 - e^(-t/%.2f ms)) \n",vf,tau*1000)
printf("  for discharging phase, Vc = %d mV(e^(-t/%.2f ms)) \n",vf,tau*1000)
printf("(c) Irmax = %.2f uA e^(-t/%.f ms)",irmax*10**3,tau*1000)


//Graph
x1=0:(0.1*10**-3):(t)
x2=tp:(0.1*10**-3):(t)
x3=0:(0.1*10**-3):(tp)
x4=tp:(0.1*10**-3):(t)
vc=vf+(vi-vf)*(exp(-x1/tau))              //for Vc - Charging phase
vc2=vf2+(vi2-vf2)*exp(-x2/tau)              //for Vc - Discharging phase
ic=irmax*exp(-x3/tau)                     //for Ic - Charging phase
ic2=-irmax*(exp(-x3/tau))             //for Ic - Discharging phase
subplot(221)
plot(x1,vc)
xlabel("t(s)")
ylabel("Vc(V)")
xtitle("Vc for the R-C network - Charging Phase")
subplot(222)
plot(x2,vc2)
xlabel("t(s)")
ylabel("Vc (V)")
xtitle("Vc for the R-C network - Discharging Phase")
subplot(223)
plot(x3,ic)
xlabel("t(s)")
ylabel("ic (mA)")
xtitle("Ic for the R-C network - Charging Phase")
subplot(224)
plot(x4,ic2)
xlabel("t(s)")
ylabel("ic (mA)")
xtitle("Ic for the R-C network - Discharging Phase")
