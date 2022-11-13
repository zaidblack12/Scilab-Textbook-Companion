//Chapter 10, Example 10.19
clc
//Variable Declaration
c1 = 2*10^-6              //capacitance in farad
v1 = 16                   //voltage
c2 = 3*10^-6              //capacitance in farad
v2 = 56                   //voltage

//Calculation
wc = c1*v1*v1/2          //energy of charge in joule
wc1 = c2*v2*v2/2         //energy of charge in joule

//Results
printf("Wc = %d uJ \n",wc*10^6)
printf("Wc = %d uJ \n",wc1*10^6)
