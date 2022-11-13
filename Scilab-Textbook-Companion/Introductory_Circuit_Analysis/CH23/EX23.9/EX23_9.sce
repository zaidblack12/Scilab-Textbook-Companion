//Chapter 23, Example 23.9
clc
//Variable Declaration
c=500*10**-12                             //capacitance in farad
f1=200*10**3                             //frequency in hertz
f2=600*10**3                             //frequency in hertz


//Calculation
l1=1/(4*(%pi**2)*(f2**2)*c)               //inductance in henry
xls=2*%pi*f1*l1                         //inductive reactance in ohms
xc=1/(2*%pi*f1*c)                         //capacitive reactance in ohms
j=xc-xls                                 //for series elements
lp=j/(2*%pi*f1)               //inductance in henry

//Results
printf("Ls = %.1f uH\n",l1*10**6) 
printf("Lp = %.2f mH",lp*10**3)
