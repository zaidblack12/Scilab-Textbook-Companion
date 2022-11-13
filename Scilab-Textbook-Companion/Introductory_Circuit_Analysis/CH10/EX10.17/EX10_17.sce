//Chapter 10, Example 10.17
clc
//Variable Declaration
r1 = 4                 //resistance in ohms
r2 = 8                 //resistance in ohms
e = 24                 //voltage
c1 = 20*10^-6          //capacitance in farad


//Calculation
vc = (r2*e)/(r1+r2)    //voltage across capacitor
q1 = c1*vc             //charge in coulombs

//Results
printf("Vc = %d V \n",vc)
printf("Q1 = %d uC \n",q1*10^6)
