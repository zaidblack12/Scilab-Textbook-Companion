//Chapter 10, Example 10.15
clc
//Variable Declaration
c1 = 800*10^-6            //capacitance in farad
c2 = 60*10^-6             //capacitance in farad
c3 = 1200*10^-6           //capacitance in farad
e = 48                    //voltage

//Calculation
ct = c1+c2+c3            //total capacitance in farad
q1 = c1*e                //charge on each plate in coulombs
q2 = c2*e                //charge on each plate in coulombs
q3 = c3*e                //charge on each plate in coulombs
qt = q1+q2+q3            //total charge in coulombs

//Results
printf("a. Ct = %d uF \n",ct*10^6)
printf("b. Q1 = %.1f mC \n",q1*10^3)
printf("   Q2 = %.2f mC \n",q2*10^3)
printf("   Q3 = %.1f mC \n",q3*10^3)
printf("c. Qt = %.2f mC \n",qt*10^3)
