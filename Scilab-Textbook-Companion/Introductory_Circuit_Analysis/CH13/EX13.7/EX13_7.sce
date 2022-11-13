//Chapter 13, Example 13.7
clc
//Variable Declaration
f = 60                     //frequency in hertz
t= 5*10^-3                 //time in milli second

//Calculation
l = 2*3.14*f*t             //in rad/s
lo = (180*l)/3.14          //in degree


//Results
printf("alpha = %.3f rad \n",l)
printf("alpha(degree) = %d degree",lo)
