//Chapter 13, Example 13.10
clc
//Variable Declaration
w = 314                   //in rad/s

//Calculation
t = (2*3.14)/w            //in millisecond
t1 = t/2                  //in millisecond
t2 = t/4                  //in millisecond
t3 = t/12                 //in millisecond

//Results
printf("360: T = %d ms \n",t*10^3)
printf("180: T/2 = %d ms \n",t1*10^3)
printf("90:  T/4 = %d ms \n",t2*10^3)
printf("30:  T/12 = %.2f ms \n",t3*10^3)
