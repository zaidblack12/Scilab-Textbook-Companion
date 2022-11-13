//Chapter 10, Example 10.16
clc
//Variable Declaration
c1 = 3*10^-6               //capacitance in farad
c2 = 4*10^-6               //capacitance in farad
c3 = 2*10^-6               //capacitance in farad
e = 120                    //voltage

//Calculation
ct1 = c2+c3              //capacitance in farad
ct = (c1*ct1)/(c1+ct1)              //capacitance in farad
qt = ct*e                 //charge in coulombs
q1 = qt                   //charge of C1 in coulombs 
v1 = q1/c1                 //voltage1 of C1 in coulombs
qt1 = q1               //charge in coulombs
vt1 = qt1/ct1              //voltage total
q2 = c2*vt1               //charge of C2         
q3 = c3*vt1               //charge of C3

//Results
printf("Qt = %d uC \n",qt*10^6)
printf("Q1 = %d uC \n",q1*10^6)
printf("V1 = %d V \n",v1)
printf("Vt = %d uC \n",vt1)
printf("Q2 = %d uC \n",q2*10^6)
printf("Q3 = %d uC \n",q3*10^6)
