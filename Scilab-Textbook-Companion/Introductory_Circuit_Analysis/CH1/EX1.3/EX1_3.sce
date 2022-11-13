//Chapter 1, Example 1.3
clc
//Variable Declaration
a1 = 1000                    //(a) unit less variable
a2 = 10000                   //(a) unit less variable
b1 = 0.00001                 //(b) unit less variable
b2 = 100                     //(b) unit less variable

//Calculation
//(a)
a = a1*a2                    //multiplication function
//(b)
b = b1*b2                    //multiplication function
//Results 
printf("(a) %d^7 \n",a/1000000)
printf("(b) %d^-3",b*10000)
