//Chapter 13, Example 13.5
clc
//Variable Declaration
w = 500                     //in rad/s


//Calculation
t = (2*3.14)/w            //time in milliseconds
f = 1/t                   //frequency in hertz

//Results
printf("T = %.2f ms \n",t*10^3)
printf("f = %.2f Hz ",f)
