//Chapter 1, Example 1.12
clc
//Variable Declaration
a = 20*10^3     //frequency in hertz
b = 0.01        //timeperiod in millisec
c = 0.002       //in Km

//Results 
printf("(a) %.2f MHz \n",a/10**6)
printf("(b) %d us \n",b*10**3)
printf("(c) %d mm",c*10**6)
