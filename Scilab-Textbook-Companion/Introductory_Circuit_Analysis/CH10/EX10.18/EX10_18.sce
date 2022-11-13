//Chapter 10, Example 10.18
clc
//Variable Declaration
r1=  2                      //resistance in ohms
r2 = 7                      //resistance in ohms
r3 =8                       //resistance in ohms
e = 72                      //voltage
c1 = 2*10^-6                //capacitance in farad
c2 = 3*10^-6                //capacitance in farad
 
//Calculation
vc2 = (r2*e)/(r1+r2)        //voltage across C2
vc1 = (r1*e)/(r1+r2)        //voltage across C1 
q1 = c1*vc1                 //charge of C1
q2 = c2*vc2                 //charge of C2

//Results
printf("Vc2 = %d V \n",vc2)
printf("Vc1 = %d V \n",vc1)
printf("Q1 = %d uC \n",q1*10^6)
printf("Q2 = %d uC \n",q2*10^6)
