
//Chapter 13, Example 13.1
clc
//Variable Declaration
f1 = 60                  //frequency in hertz
f2 = 1000                //frequency in hertz

//Calculation
t1 = 1/f1               //time in milli second
t2 = 1/f2               //time in milli second

//Results
printf("T = %.2f ms \n",t1*10^3)
printf("T = %d ms ",t2*10^3)
