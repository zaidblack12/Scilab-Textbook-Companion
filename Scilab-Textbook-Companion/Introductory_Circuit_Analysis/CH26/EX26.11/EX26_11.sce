//Chapter 26, Example 26.11, page 1177
clc
//Initialisation
hf=50             //short circuit current gain 
ho=25*10**-6      //Output Admittance with input open circuited 
zl=2*10**3        //load impedance
hi=1*10**3         //input impedance with output shorted 
hr=4*10**-4         //reverse voltage amplification with input open circuited 

//Calculation
Ai=hf/(1+(ho*zl))                        //current gain
Av=-hf*zl/((hi*(1+(ho*zl)))-(hr*hf*zl))   //voltage gain

//Result
printf("Current gain, Ai = %.2f \n",Ai)
printf("Voltage gain, Av = %ds \n",Av)
