//Chapter 24, Example 24.11
clc
//Initialisation
f=10*10**3                  //frequency in hertz
r=5*10**3             //resistance in ohm
c=0.01*10**-6               //capacitance in farad
vi=0                    //for charging phasse, voltage
vf=10                    //voltage in mV
vf2=0                    //voltage
t1=0                      //for charging phase for ic
vr=vf


//Calculation
t=1/f                  //time period in sec
tp=t/2                  //phase time in sec
tau=r*c                   //time constant in sec
irmax=vr/r                //current in milliampere

//first interval
    vc1=vf+(vi-vf)*(exp(-tau/tau))       //in voltage
    vi1=vc1                             //in voltage
    vc2=vc1*exp(-tau/tau)               //in voltage
    irmax2=(vi-vc1)/r                   //in milliamp
    
    //for graph
    x1=0:(0.01*10**-3):(tp)
    x2=0:(0.01*10**-3):(tp)
    vcc=vf+((vi-vf)*(exp(-x1/tau)))               //for vc - Charging phase
    vcd=vc1*(exp(-x2/tau))                        //for vc - Discharging phase
    
    icc=(irmax*10**-3)*exp(-x1/tau)                //for Ic - Charging phase
    icd=(irmax2*10**-3)*(exp(-x2/tau))             //for Ic - Discharging phase
    scf(1)
    subplot(221)
    plot(x1,vcc)
    xlabel("t(s)")
    ylabel("Vc(V)")
    xtitle("Vc for the R-C network - Charging Phase")
    subplot(222)
    plot(x2,vcd)
    xlabel("t(s)")
    ylabel("Vc (V)")
    xtitle("Vc for the R-C network - Discharging Phase")
    subplot(223)
    plot(x1,icc)
    xlabel("t(s)")
    ylabel("ic (mA)")
    xtitle("Ic for the R-C network - Charging Phase")
    subplot(224)
    plot(x2,icd)
    xlabel("t(s)")
    ylabel("ic (mA)")
    xtitle("Ic for the R-C network - Discharging Phase")

//second interval
    vc1=vf+(vc2-vf)*(exp(-tau/tau))                //in voltage
    vi1=vc1                                        //in voltage
    vc2=vc1*exp(-tau/tau)                           //in voltage
    irmax2=(vi-vc1)/r                               //in milliamp
    x1=0:(0.01*10**-3):(tp)
    x2=0:(0.01*10**-3):(tp)
    vcc2=vf+((vc2-vf)*(exp(-x1/tau)))               //for vc - Charging phase
    vcd2=vc1*(exp(-x2/tau))                         //for vc - Discharging phase
    icc=(irmax*10**-3)*exp(-x1/tau)                     //for Ic - Charging phase
    icd=(irmax2*10**-3)*(exp(-x2/tau))             //for Ic - Discharging phase
    scf(2)
    subplot(221)
    plot(x1,vcc2)
    xlabel("t(s)")
    ylabel("Vc(V)")
    xtitle("Vc for the R-C network - Charging Phase")
    subplot(222)
    plot(x2,vcd2)
    xlabel("t(s)")
    ylabel("Vc (V)")
    xtitle("Vc for the R-C network - Discharging Phase")
    subplot(223)
    plot(x1,icc)
    xlabel("t(s)")
    ylabel("ic (mA)")
    xtitle("Ic for the R-C network - Charging Phase")
    subplot(224)
    plot(x2,icd)
    xlabel("t(s)")
    ylabel("ic (mA)")
    xtitle("Ic for the R-C network - Discharging Phase")

