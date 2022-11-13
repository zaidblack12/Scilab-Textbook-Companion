//Chapter 13, Example 13.11
clc
//Variable Declaration
w = 1000                 //in rad/s
t = 2*10^-3              //in millisecond
i1 = 6*10^-3             //in milliampere

//calculation

apl = (180*2)/3.14           //alphain degree
sin114 = 0.9093              //in degree
i = i1*sin114                //in milliampere

//Results
printf("i = %.2f mA ",i*10^3)
