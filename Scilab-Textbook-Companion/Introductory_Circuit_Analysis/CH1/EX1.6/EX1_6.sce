//Chapter 1, Example 1.6
clc
//Variable Declaration
a1 = 6300                     //(a) unit less variable
a2 = 75000                    //(a) unit less variable
b1 = 0.00096                  //(b) unit less variable
b2 = 0.000086                 //(b) unit less variable
 
//Calculation
//(a)
a = a1 + a2                  //addition function
//(b)
b = b1 - b2                  //subtraction function
//Results 
printf("(a) %.1f x 10^3 \n",a/1000)
printf("(b) %.1f x 10^-5",b*100000)
