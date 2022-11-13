//Chapter 1, Example 1.5
clc
//Variable Declaration
a1 = 100                     //(a) unit less variable
b1 = 1000                    //(b) unit less variable
c1 = 0.01                    //(c) unit less variable

//Calculation
//(a)
a = a1^4                     //multiplication function
//(b)
b = b1^-2                     //multiplication function
//(c)
c = c1^-3                     //multiplication function
//Results 
printf("(a) %d^8 \n",a/10000000)
printf("(b) %d^-6 \n",b*10000000)
printf("(c) %d^6",round(c/100000))
