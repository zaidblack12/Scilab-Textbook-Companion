//Chapter 3, Example 3.11
clc
//Variable Declaration
r1 = 120*10^-3           //in milliohm
t1 = 256                 //in degree celsius
r2 = 100*10^-3           //in milliohm
t2 = 236                 //in degree celsius
//Calculation
T = r1*(t1/r2)-t2        //in degree celsius

//Results
printf("T2 = %.1f C",T)
