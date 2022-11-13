//Chapter 23, Example 23.3
clc
//Variable Declaration
vo=1.2                         //output voltage in V
vi=2*10**-3                         //input voltage in mV


//Calculation
dbv=20*log10(vo/vi)                   //dB gain

//Results
printf("dBv = %.2f dB\n",dbv) 
