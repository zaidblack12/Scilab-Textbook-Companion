//Chapter 9, Example 9.18
clc
//Variable Declaration
r1 = 5                   //resistance in ohms
r2 = 4                   //resistance in ohms
r3 = 2                   //resistance in ohms
e1 = 10                  //voltage
e2= 16                   //voltage
e3 = 8                   //voltage
rl = 3                   //load resistance in ohms

//Calculation
Eeq = ((e1/r1)-(e2/r2)+(e3/r3))/((1/r1)+(1/r2)+(1/r3))
Req = 1/((1/r1)+(1/r2)+(1/r3))                   //resistance in ohms
il = Eeq/(Req+rl)              //load current in amperes
vl = il*rl                     //load voltage

//Results
printf("Eeq = %.3f V \n",Eeq)
printf("Req = %.3f ohm \n",Req)
printf("IL = %.3f V \n",il)
printf("VL = %.3f V ",vl)
