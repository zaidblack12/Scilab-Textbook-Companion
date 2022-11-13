//Chapter 20, Example 20.9
clc
stacksize(10000000);
//Variable Declaration
l = 5*10^-3                     //inductance in mH
c = 50*10^-12                   //capacitance in pF
rl = 100                        //in ohm
rs = 50*10^3                    //in kohm
i = 2*10^-3                     //current in mA

//Calculation
fs = 1/(2*%pi*sqrt(l*c))       //frequency in kHz
xl = 2*%pi*fs*l                     //in kohm
ql = xl/rl                      //unit
fp = fs                        //frequency in kHz
rp = ql*ql*rl                     //in Megaohm
ztp=((rs*rp)/(rs+rp))             //in kohm
qp = ztp/xl                    //unit
bw = fp/qp                    //frequency in kHz
bw1 = (1/(2*%pi))*((rl/l)+(1/(rs*c)))       //frequency in kHz
vp = i*ztp                         //in volts

//graph
x= 100 : 10000 : 500000
//x=318.31*10**3
rp1=(4*(%pi**2)*(l**2)*(x.^2))/rl
//rp1=rl**2/(4*(%pi**2)*(l**2)*(x.^2))
vp1=i*((rs*rp1)./(rs+rp1))

plot(x,vp1);
xtitle('Passband response')
xlabel('f')
ylabel('Vo')
//insufficient data from textbook for plotting a graph


//Results
printf("a. fp = fs = %.2f kHz \n",fs/10^3)
printf("b. Qp = %.2f \n",qp)
printf("c. BW = %.2f kHz \n",bw/10^3)
printf("   BW = %.2f kHz \n",bw1/10^3)
printf("d. Vp = %.2f V \n",vp)
