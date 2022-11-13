//Chapter 9, Example 9.19
clc
//Variable Declaration
i1 = 5                       //source current in amperes
i2 = 5/3                     //source current in amperes
g1 = 1                       //conductance
g2 = 1/6                     //conductance
r3 = 2                       //resistance in ohms
//Calculation
it = i1+i2                  //total current in amperes
gt = g1+g2                  //total conductance in mho
Eeq = it/gt                 //voltage
Req = 1/gt                  //equivalent resistance
i2ohm = Eeq/(Req+r3)        //current in amperes of 2-ohm
Eeq1 = Eeq
Req1 = Req

//Results
printf("a. Eeq = %f V \n",Eeq)      //converted to decimals
printf("   Req = %f ohm \n",Req)      //converted to decimals
printf("   I2ohm = %d A \n",i2ohm)
printf("b. Eeq = %f V \n",Eeq1)      //converted to decimals
printf("   Req = %f ohm ",Req1)      //converted to decimals
