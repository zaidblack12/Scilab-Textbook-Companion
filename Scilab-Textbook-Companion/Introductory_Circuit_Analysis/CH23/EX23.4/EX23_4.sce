//Chapter 23, Example 23.4
clc
//Variable Declaration
vo=6.8                         //output voltage in V
db=36                          //dB gain


//Calculation
vi=vo/(10**(db/20))             //input voltage

//Results
printf("Vi = %.2f mV\n",vi*10**3) 
