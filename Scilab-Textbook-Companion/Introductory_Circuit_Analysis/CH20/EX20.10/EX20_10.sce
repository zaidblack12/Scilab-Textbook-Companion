//Chapter 20, Example 20.10
clc
//Variable Declaration
fp = 318.31*10^3            //frequency in kHz
ql = 100                    //unit
rp = 1*10^6                 //in Mega ohm
i = 2*10^-3                 //current in mA

//Calculation
qp = ql                    //unit
bw = fp/qp                 //frequency in kHz
ztp = rp                   //in mega ohm
vp = i*ztp                 //in volts



//Results
printf("a. fp = %.2f kHz \n",fp/10^3)
printf("b. Qp = %d \n",qp)
printf("c. BW = %.3f kHz \n",bw/10^3)
printf("d. Vp = %d V ",vp)
