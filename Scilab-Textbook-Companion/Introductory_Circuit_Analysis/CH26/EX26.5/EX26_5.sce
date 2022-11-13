//Chapter 26, Example 26.5, page 1161
clc
//Initialisation
Rl=4.7*10**3        //load Resistance in Ohm
Ro=40*10**3         //output Resistance in Ohm
Avn=-960            //no-load voltage gain
Ri=2.7*10**3       //input Resistance in Ohm



//Calculation
Av=Avn*Rl/(Rl+Ro)          //loaded voltage gain
Ai=(-Avn)*Ri/(Rl+Ro)          //voltage gain, Ai
Rl2=2*Rl                       //Resistance in Ohm
Av2=Avn*Rl2/(Rl2+Ro)          //loaded voltage gain
Ai2=(-Avn)*Ri/(Rl2+Ro)          //voltage gain, Ai
Air=(-Av)*Ri/Rl                  //voltage gain, Air
Ag=(Av**2)*Ri/Rl                //voltage gain, Ag
Ai2=-Ag/Av                    //voltage gain, Ai

//Result
printf("(a) Av = %.2f \n",Av)
printf("(b) Avi = %.2f \n",Ai)
printf("(c) Av = %.2f, Ai = %.2f\n",Av2,Ai2)
printf("(d) Air = %.2f \n",Air)
printf("(e) Ag = %.2f \n",Ag)
printf("(f) Ai = %.2f",Ai2)








