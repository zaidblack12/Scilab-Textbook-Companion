//Chapter 1, Example 1.15
clc
//Variable Declaration
a1 =100                 //in kilometers
a2 = 1000               //in meters
a3 = 39.37              //in inches
a4 = 12                 //in inches
a5 = 5280               //in ft
b1 = 60                 //in minutes
b2 = 4                  //in hours

//Calculation
a = (a1*a2*a3)/(a4*a5)
b = b1/b2

//Results 
printf("(a) %.2f mi/h \n",a)
printf("(b) %d mi/h",b)
