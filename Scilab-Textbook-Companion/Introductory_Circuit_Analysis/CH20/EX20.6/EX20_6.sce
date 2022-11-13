//Chapter 20, Example 20.6
clc

//Variable Declaration
l = 1*10^-3                //inductance in mH
c = 1*10^-6                //capacitance in uF
rs = 10*10^3               //in ohm
i = 10*10^-3               //current in milliampere


//Calculation
fp = 1/(2*%pi*sqrt(l*c))       //frequency in kHz
xl = 2*%pi*fp*l                //in ohm
qp = rs/xl                     //unit
bw = fp/qp                     //bandwidth in Hz
f1 = (1/(4*%pi*c))*((1/rs)-sqrt((1/(rs*rs))+((4*c)/l)))       //frequency in kHz
f2 = (1/(4*%pi*c))*((1/rs)+sqrt((1/(rs*rs))+((4*c)/l)))       //frequency in kHz
vc = i*rs                 //in volts
il = vc/xl                //load current in ampere
ic = vc/xl                //in ampere

//Results
printf("a. fp = %.2f kHz \n",fp/10^3)
printf("b. Rs = %d kohm \n",rs/10^3)
printf("c. Qp = %.2f \n",qp) 
printf("   BW = %.2f kHz \n",bw)
printf("   f1 = %.3f kHz \n",-f1/10^3)
printf("   f2 = %.3f kHz \n",f2/10^3)
printf("d. Vc = %d V \n",vc)
printf("e. IL = %.2f A \n",il)
printf("   Ic = %.2f A \n",ic)
