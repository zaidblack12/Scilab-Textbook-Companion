//Chapter 26, Example 26.4, page 1157
clc
//Initialisation
Eo=-20             //output voltage
Ei=4*10**-3        //input voltage
Rl=2.2*10**3        //load Resistance in Ohm
Ro=50*10**3       //output Resistance in Ohm
Zi=1*1*10**3       //input impedance in Ohm
Rg=1*10**3         //Resistance in Ohm


//Calculation
Avn=Eo/Ei                  //no-load voltage gain
Av=Avn*Rl/(Rl+Ro)          //loaded voltage gain
Avr=Av*Zi/(Zi+Rg)          //loaded voltage gain
Ro=Rl*((Avn/Av)-1)          //Resistance in Ohm

//Result
printf("(a) Avnl = %d \n",Avn)
printf("(b) Av = %.2f \n",Av)
printf("(c) Avr = %.2f \n",Avr)
printf("(d) Ro = %d kOhm",Ro/1000)
