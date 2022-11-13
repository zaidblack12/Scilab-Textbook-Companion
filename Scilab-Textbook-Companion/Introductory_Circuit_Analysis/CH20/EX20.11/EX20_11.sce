//Chapter 20, Example 20.11
clc
//Variable Declaration
fp = 50000                    //frequency in Hz
bw = 2500                     //bandwidth in Hz
l = 1*10^-3                   //inductance in mH
rl = 10                       //resistance in ohm 
vp = 10                        //in volts
rs = 17.298*10^3               //in kohms
//Calculation
qp = fp/bw                      //unit
xl = 2*%pi*fp*l                //in ohm
ql = xl/rl                     //unit
rp = ql*ql*rl                   //in ohm
xc = xl                       //in ohm
c = 1/(2*%pi*fp*xc)              //in uF
ztp = (rs*rp)/(rs+rp)        //in kohm
i = vp/ztp                           //current in mA
//Results
printf("Qp = %d \n",qp)
printf("Ql = %.1f \n",ql)
printf("Rp = %.1f ohm \n",rp)
printf("C = %.2f uF \n",c*10^6)
printf("I = %.1f mA \n",i*10^3)
