//Chapter 14, Example 14.12
clc
//Variable Declaration
a = cosd(40-(-20))                  //leading
b = cosd(80-30)                     //lagging
p = 100                             //in watt
v = 20                              //in voltage
i = 5                               //in ampere

//Calculation
fp = p/(v*i)                    //power factor

//Results
printf("a. Fp = %.1f leading \n",a)
printf("b. Fp = %.4f leading \n",b)
printf("c. Fp = %d \n",fp)
