//Chapter 8, Example 8.5
clc
//Variable Declaration
rs = 3000                    //resistance in ohm
i = 9*10^-3                  //source current in ampere
rl  = 6000                   //load resistance in ohm
e = 27                       //voltage
rl2 = 10                     //replace load resistance in ohm

//Calculation
il = (rs*i)/(rs+rl)         //applying the current divider rule
il1 = e/(rs+rl)               //current in ampere
il2 = (rs*i)/(rs+rl2)      //applying the current divider rule
il3 = i                       // current in ampere

//Results
printf("a. IL = %d mA \n",il*1000)
printf("   IL = %d mA \n",il1*1000)
printf("b. IL = %.2f mA \n",il2*1000)
printf("c. IL = %d mA",il3*1000)
