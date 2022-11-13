//Chapter 13, Example 13.8
clc
//Variable Declaration
e1 = 5                     //in volts
l = 0.8*3.14               //in degree

//Calculation
e = e1*sind(40)            //in volts
lo = 180*l/3.14            //in degree
e2 = 5*sind(lo)            //in volts

//Results
printf("e = %.3f V \n",e)
printf("e = %.3f V \n",e2)
