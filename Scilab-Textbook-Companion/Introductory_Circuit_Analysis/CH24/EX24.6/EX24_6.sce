//Chapter 24, Example 24.6
clc
//Initialisation
t1=12*10**-6           //time period in ms
t2=2*10**-6            //time period in ms
v1=8*10**-3           //voltage
v2=4*10**-6           //voltage
v3=2*10**-3           //voltage
v4=6*10**-6           //voltage




//Calculation
T=t1-t2                 //timeperiod in microsec
g=((v1*v2)+(v3*v4))/T    //Average Value in Volts

//Result
printf("Average Value, G = %.1f mV \n",g*10**3)

