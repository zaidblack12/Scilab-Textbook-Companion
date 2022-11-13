//Chapter 13, Example 13.9
clc
//Variable Declaration
v = 4                         //in volts
em = 10                       //in volts
w = 377                       //in rad/s
//Calculation
l1 = asind(v/em)              //alpha1 in degree
l2 = 180-(l1)                 //alpha2 in degree
l3 = (%pi/180)*(l1)           //in rad
t1 = l3/w                     //in millisecond
l4 = (%pi/180)*l2             //in rad
t2 = l4/w                     //in millisecond
//Results
printf("a. alpha1 = %.3f \n",l1)
printf("   alpha2 = %.3f \n",l2)
printf("b. t1 = %.2f ms \n",t1*10^3)
printf("   t2 = %.2f ms \n",t2*10^3)
