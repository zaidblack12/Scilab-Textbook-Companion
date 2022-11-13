//Chapter 10, Example 10.1
clc
//Variable Declaration
c11=5*10^-6                     //capacitance in farad
c12=0.1*10^-6                    //capacitance in farad
c13=20*10^-6                    //capacitance in farad
c14=1000*10^-12                    //capacitance in farad

//Calculation
c1 = 3*(c11)                    //capacitance in farad
c2 = 0.5*(c12)                     //capacitance in farad
c3 = 2.5*(c13)                    //capacitance in farad
c4 = 5*4*(c14)/(1/8)             //capacitance in farad

//Results
printf("a. C = %.f uF \n",c1*10^6)
printf("b. C = %.2f uF \n",c2*10^6)
printf("c. C = %.f uF \n",c3*10^6)
printf("d. C = %.2f uF \n",c4*10^6)
