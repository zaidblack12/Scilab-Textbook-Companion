//Chapter 12, Example 12.10
clc
//Variable Declaration
r1 = 2                  //resistance1 in ohms
r2 = 3                  //resistance2 in ohms
e  = 10                 //voltage in volts

//Calculation
il = e/(r1+r2)         //load current in ampere
vc = (r2*e)/(r1+r2)    //load voltage in volts

//Results
printf("IL = %d A \n",il)
printf("Vc = %d V ",vc)
