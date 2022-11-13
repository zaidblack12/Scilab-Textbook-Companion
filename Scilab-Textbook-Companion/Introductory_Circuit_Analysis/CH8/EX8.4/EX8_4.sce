//Chapter 8, Example 8.4
clc
//Variable Declaration
e = 6                        //voltage
rs = 2                       //resistance in ohm
rl = 4                       //load resistance in ohm
i = 3                        //source current in ampere
rl2 = 1000                   //replace load resistance in ohm

//Calculation
il = e/(rs+rl)                      //current in ampere
il1 = (rs*i)/(rs+rl)          //applying the current divider rule
il2 = e/(rs+rl2)               //current in ampere
il3 = e/rl2                     //current in ampere

//Results
printf("a. IL = %d A \n",il)
printf("   IL = %d A \n",il1)
printf("b. IL = %.2f mA \n",il2*1000)
printf("c. IL = %d mA",il3*1000)
