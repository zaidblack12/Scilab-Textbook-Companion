//Chapter 20, Example 20.3
clc

//Variable Declaration
xl = 300        //in ohms
r = 5           //in ohms
fs = 12000       //in hertz


//Calculation
qs = xl / r              //unit
bw = fs/qs               //bandwidth in hertz
f2 = fs + (bw/2)         //frequency2 in hertz
f1  = fs-100             //frequency1 in hertz
//Results
printf("a. BW = %d Hz \n",bw)
printf("b. f2 = %d Hz \n",f2)
printf("   f1 = %d Hz \n",f1)
