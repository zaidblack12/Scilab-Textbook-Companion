//Chapter 6, Example 6.20
clc
//Variable Declaration
r2 = 7                   //resistance in ohm
i = 27*10^-3             //current in ampere
i1 = 21*10^-3            //current in ampere


//Calculation
r1 = (r2*(i-i1))/i1        //resistance in ohm
i2 = i-i1                 //current in ampere
v2 = i2*r2                //voltage in volt
v1 = v2                   //voltage in volt
r11 = v1/i1               //resistance in ohm

//Results
printf("R1 = %.f ohm \n",r1)
printf("R1 = %.f ohm",r11)
