//Chapter 7, Example 7.9
clc
//Variable Declaration
r123 = 24*10^3               //combining resistance 1,2,3 in ohms
r4 = 24*10^3                 //resistance in ohms
r5 = 12*10^3                 //resistance in ohms
r6 = 12*10^3                 //resistance in ohms
r7 = 9*10^3                  //resistance in ohms
r89 = 9*10^3                 //combining resistance 8,9 in ohms
e = 72                       //voltage

//Calculation
r = (r123*r4)/(r123+r4)      //parallel resistance R123 and R4 in ohm
i5 = e/(r+r5)                //by ohm's law, in ampere
rr = (r7*r89)/(r7+r89)       //parallel resistor R7 and R89, in ohms
v7 = (rr*e)/(rr+r6)          //voltage divider rule, in volts
i6 = v7/rr                   //current through rr, in ampere
is = i5+i6                   //soucre current by KCL, in ampere

//Results
printf("I5 = %d mA \n",i5*1000)
printf("V7 = %.1f V \n",v7)
printf("I6 = %.2f mA \n",i6*1000)
printf("Is = %.2f mA \n",is*1000)
