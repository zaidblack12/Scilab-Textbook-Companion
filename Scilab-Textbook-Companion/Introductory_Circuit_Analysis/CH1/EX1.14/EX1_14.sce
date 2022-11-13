//Chapter 1, Example 1.14
clc
//Variable Declaration
a1 = 0.5               //half day
a2 = 24                //24hours in 1day
a3 = 60                //60minutes in 1hour
b1 =2.2                //yards
b2 = 3                 //3ft in 1 yard
b3 = 12                //12inches in 1ft
b4 = 39.37             //in inches

//Calculation
a = a1*a2*a3
b = (b1*b2*b3)/b4

//Results 
printf("(a) %d min \n",a)
printf("(b) %.3f m",b)
