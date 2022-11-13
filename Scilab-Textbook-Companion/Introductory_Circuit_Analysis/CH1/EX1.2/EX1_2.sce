//Chapter 1, Example 1.2
clc
//Variable Declaration
a = 1000                //(a) unit less variable
b = 0.00001             //(b) unit less variable

//Calculation
//(a)
a1 = 1/a                //inverse function
//(b)
b1 = 1/b                //inverse function

//Results 
printf("(a) %d^-3 \n",a1*10000)
printf("(b) %d^+5",round(b1/10000))
