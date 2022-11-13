//Chapter 14, Example 14.7
clc
//Variable Declaration
vm1 = 100                     //Vm of (a)
im1 = 20                      //Im of (a)
vm2 = 1000                    //Vm of (b)
im2 = 5                       //Im of (b)
vm3 = 500                     //Vm of (c)
im3 = 1                       //Im of (c)
vm4 = 50                      //Vm of (d)
im4 = 5                       //Im of (d)
w = 377                       //in rad/s
w1 = 157                      //in rad/s
//Calculation  
r = vm1/im1                    //resistance of (a)
xl = vm2/im2                   //inductance reactance
l = xl/w                       //inductance in henry
xc = vm3/im3                   //capacitance reactance
c = 1/(w1*xc)                  //capacitance in farad
r1 = vm4/im4                   //resistance of (d)

//Results
printf("a. R = %d ohm \n",r)
printf("b. L = %.3f H \n",l)
printf("c. C = %.2f uF \n",c*10^6)
printf("d. R = %d ohm \n",r1)
