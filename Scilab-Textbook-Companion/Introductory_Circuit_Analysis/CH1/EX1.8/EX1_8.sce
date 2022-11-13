//Chapter 1, Example 1.8
clc
//Variable Declaration
a1 = 0.00047                     //(a) unit less variable
a2 = 0.002                       //(a) unit less variable
b1 = 690000                      //(b) unit less variable
b2 = 0.00000013                  //(b) unit less variable

//Calculation
//(a)
a = a1/a2                        //division function
//(b)
b = b1/b2                        //division function
//Results 
printf("(a) %.1f x 10^-2 \n",a*100)
printf("(b) %.2f x 10^12",b/1000000000000)
