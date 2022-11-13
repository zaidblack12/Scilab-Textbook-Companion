//Chapter 1, Example 1.9
clc
//Variable Declaration
a1 = 0.00003                     //(a) unit less variable
b1 = 90800000                    //(b) unit less variable

//Calculation
//(a)
a = a1**3                        //multiplication function
//(b)
b = b1**2                        //multiplication function
//Results 
printf("(a) %d x 10^-15\n",a*10**15)
printf("(b) %.4f x 10^14",b/10**14)
