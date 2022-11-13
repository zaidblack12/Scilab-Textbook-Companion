//Chapter 4, Example 4.10
clc
//Variable Declaration
p1 = 1492                  //output power
n = 0.75                   //efficiency
E = 220                    //applied voltage

//Calculation
Pi = p1/n                  //inputpower in watt
I = Pi/E                   //current in ampere

//Results
printf("Pi = %.2f W \n",Pi)
printf("I = %.2f A",I)
