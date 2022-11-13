//Chapter 12, Example 12.3
clc
//Variable Declaration
i = 10*10^-3                   //current in milli ampere
l = 4*10^-3                    //inductor in henry
t = 2*10^-3                    //time in millisecond
t1 = 5*10^-3                   //time in millisecond
i1 = 0                         //current

//Calculation
vl2 = (l*i1)/t                //voltage in millivolts
vl = (l*i)/t                  //voltage in millivolts
vl1 = (-l*i)/t1               //voltage

//Results
printf("a. VL = %d \n",vl2)
printf("b. VL = %d mV \n",vl*10^3)
printf("c. VL = %d mV \n",vl1*10^3)
printf("d. VL = %d",vl2)
