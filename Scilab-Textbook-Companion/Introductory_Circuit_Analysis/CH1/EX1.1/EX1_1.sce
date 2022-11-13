//Chapter 1, Example 1.1
clc
//Variable Declaration
a1 = 532.6                      //(a) unit less variable
a2 = 4.02                       //(a) unit less variable
a3 = 0.036                      //(a) unit less variable
b1 = 0.04                       //(b) unit less variable
b2 = 0.003                      //(b) unit less variable
b3 = 0.0064                     //(b) unit less variable
c1 = 4.632                      //(c) unit less variable
c2 = 2.4                        //(c) unit less variable
d1 = 3.051                      //(d) unit less variable
d2 = 802                        //(d) unit less variable
e1 = 1402                       //(e) unit less variable
e2 = 6.4                        //(e) unit less variable
f1 = 0.0046                     //(f) unit less variable
f2 = 0.05                       //(f) unit less variable

//Calculation
//(a)
a = a1+a2+a3                    //addition function
//(b)
b = b1+b2+b3                    //addition function
//(c)
c = c1*c2                       //Multiplication function
//(d)
d = d1*d2                       //Multiplication function
//(e)
e = e1/e2                       //Division function
//(f)
f = f1/f2                       //Division function

//Results 
printf("(a) %.1f + %.2f + %.3f = %.3f = %.1f \n",a1,a2,a3,a,a)
printf("(b) %.2f + %.3f + %.4f = %.4f = %.2f \n",b1,b2,b3,b,b)
printf("(c) %.3f * %.1f = %.4f = %d \n",c1,c2,c,c)
printf("(d) %.3f * %.0f = %.3f = %d \n",d1,d2,d,d)
printf("(e) %.0f / %.1f = %.4f = %d \n",e1,e2,e,e)
printf("(f) %.4f / %.2f = %.4f = %.2f",f1,f2,f,f)
