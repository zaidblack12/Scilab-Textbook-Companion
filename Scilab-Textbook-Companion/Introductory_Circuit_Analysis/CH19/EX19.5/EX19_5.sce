//Chapter 19, Example 19.5, page 865
clc
//Initialisation
hp1=746                    //1 hp
eta=0.92                    //eta
fp=0.6                       //power factor
v=208                        //voltage
qc=5405.8                       //in VAR
f=60                         //frequency in hertz


//Calculation
p0=5*hp1                  //output power in watt
pi=p0/eta                 //input power in watt
teta=acosd(fp)            //angle in degree
ql=pi*tand(teta)          //in VAR(L)
s=sqrt((pi**2)+(ql**2))    //in VA
xc=(v**2)/(qc)             //in ohms
c=1/(2*3.14*f*xc)          //in microfarad
i1=s/v                     //in ampere
i2=pi/v                    //in ampere
im=pi/(v*fp)               //in ampere


//Result
printf("(a) Power traingle, \n")
printf("    Pi = %.2f W \n",pi)
printf("    QL = %.2f VAR \n",ql)
printf("    S = %.2f VA \n",s)
printf("(b) C = %.1f uF \n",c*10**6)
printf("(c) At 0.6 Fp, I = %.2f A \n",i1)
printf("    At unity Fp, I = %.2f A \n",i2)
printf("(d) Im = %.2f A < %.2f degree \n",im,teta)
