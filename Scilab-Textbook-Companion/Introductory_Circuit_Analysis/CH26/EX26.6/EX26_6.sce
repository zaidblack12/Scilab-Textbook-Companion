//Chapter 26, Example 26.6, page 1163
clc
//Initialisation
Avn1=1              //no-load voltage gain
Avn2=-600              //no-load voltage gain
Avn3=-1200              //no-load voltage gain
Zi1=50*10**3       //input impedance in Ohm
Zi2=1.8*10**3       //input impedance in Ohm
Zi3=1.2*10**3       //input impedance in Ohm
Rl=3.3*10**3       //input impedance in Ohm
Ro=25                //output Resistance in Ohm
Ro2=40*10**3         //output Resistance in Ohm
Ro3=50*10**3         //output Resistance in Ohm


//Calculation
Av1=Avn1*Zi2/(Zi2+Ro)          //loaded voltage gain
Av2=Avn2*Zi3/(Zi3+Ro2)         //loaded voltage gain
Av3=Avn3*Rl/(Rl+Ro3)          //loaded voltage gain
Ai=(-Avn1)*Zi1/(Zi2+Ro)          //voltage gain, Ai
Ai2=(-Avn2)*Zi2/(Zi3+Ro2)          //voltage gain, Ai
Ai3=(-Avn3)*Zi3/(Rl+Ro3)          //voltage gain, Ai
Rl2=2*Rl                       //Resistance in Ohm
Av21=Avn1*Rl2/(Rl2+Ro)          //loaded voltage gain
Ai20=(-Avn1)*Zi1/(Zi2+Ro)          //voltage gain, Ai
Air=(-Avn1)*Zi1/Rl                  //voltage gain, Air
Ag=(Avn1**2)*Zi1/Rl                //voltage gain, Ag
Ai21=-Ag/Avn1                    //voltage gain, Ai
Avt=Av1*Av2*Av3                   //voltage gain
Ait=Ai*Ai2*Ai3                   //voltage gain
Agt=-Avt*Ait                   //voltage gain
Av2=Av1*Av2                   //voltage gain
Ai22=Ai*Ai2                   //voltage gain
Ai23=Av2*Zi1/Zi3                   //voltage gain
Ag2=Av2*Ai23                   //voltage gain
Ag22=(Av2**2)*(Zi1/Zi3)                   //voltage gain
Avt2=Avn1*Avn2*Avn3                   //voltage gain


//Result
printf("(a) Av1 = %.3f, Av2 = %.3f, Av3 = %.3f \n Ai1 = %.3f, Ai2 = %.3f, Ai3 = %.3f \n",Av1,Av2,Av3,Ai,Ai2,Ai3)
printf("(b) Avt = %.2f, Ait = %.2f \n",Avt,Ait)
printf("(c) Agt = %.2f x 10^6 \n",Agt/10**6)
printf("(d) Av2 = %.2f, Ai2 = %.3f \n",Av2,Ai22)
printf("(e) Ai2 = %.2f \n",Ai23)
printf("(f) Ag2 = %.2f \n",Ag2)
printf("(g) Ag2 = %.2f \n",Ag22)
printf("(h) Avt = %.1f x 10^5",Avt2/(10**5))








