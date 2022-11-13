//Chapter 1, Example 1.7
clc
//Variable Declaration
a1 = 0.0002                     //(a) unit less variable
a2 = 0.000007                   //(a) unit less variable
b1 = 340000                     //(b) unit less variable
b2 = 0.00061                    //(b) unit less variable

//Calculation
//(a)
a = a1*a2                      //multiplication function
//(b)
b = b1*b2                      //multiplication function
//Results 
printf("(a) %d x 10^-10 \n",a*10000000000)
printf("(b) %.1f",b)
