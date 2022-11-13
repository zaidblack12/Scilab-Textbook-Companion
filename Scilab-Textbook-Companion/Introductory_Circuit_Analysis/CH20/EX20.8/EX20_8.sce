//Chapter 20, Example 20.8
clc

//Variable Declaration
l = 1*10^-3                      //inductance in mH
fp = 0.04*10^6                   //frequency in microfarad
rl = 10                          //in ohm
rs = 40*10^3                     //in kohm

//Calculation
xl = 2*%pi*fp*l                //in ohm
ql = xl/rl                     //unit
rp = ql*ql*rl                  //in kiloohm
ztp = (rs*rp)/(rs+rp)          //in kiloohm
c = 1/(4*%pi*%pi*fp*fp*l)        //capacitance in nF
qp = ztp/xl                      //unit
bw = fp/qp                     //bandwidth in kHz
f1 = (1/(4*%pi*c))*((1/ztp)-sqrt((1/(ztp*ztp))+((4*c)/l)))   //frequency in kHz
f2 = (1/(4*%pi*c))*((1/ztp)+sqrt((1/(ztp*ztp))+((4*c)/l)))   //frequency in kHz 
//Results
printf("a. Ql = %.2f \n",ql)
printf("b. Rp = %.2f kohm \n",rp/10^3)
printf("c. ZTp = %.2f kohm \n",ztp/10^3)
printf("d. C = %.2f nF \n",c*10^9)
printf("e. Qp = %.2f \n",qp)
printf("f. BW = %.2f kHz \n",bw/10^3)
printf("   f1 = %.3f kHz \n",-f1/10^3)
printf("   f2 = %.3f kHz \n",f2/10^3)
