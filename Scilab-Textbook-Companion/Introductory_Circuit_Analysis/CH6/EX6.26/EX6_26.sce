//Chapter 6, Example 6.26
clc
//Variable Declaration
e = 20                           //supply voltage
r = 1*10^6                       //resistance in ohm
rab1 = 11*10^6                   //load resistance in ohm
rm = 2*10^6
//Calculation
vab = e                         //voltage Vab
vab2 = (rab1*e)/(rab1+r)        //Vab by voltage divider rule
vab3 = (rm*e)/(rm+r)            //Vab for the internal resistance 

//Results
printf("a. Vab = %d V \n",vab)
printf("b. Vab = %.2f V \n",vab2)
printf("c. Vab = %.2f V \n",vab3)
