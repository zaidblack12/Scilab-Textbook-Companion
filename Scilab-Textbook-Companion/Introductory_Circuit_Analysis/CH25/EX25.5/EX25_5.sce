//Chapter 25, Example 25.5
clc
//Initialisation
v=4                  //in voltage
v2=6                  //in voltage

//Calculation
x = 0 : 0.1 : 10
y = v + v2*sin(x)
vrmax=sqrt((v**2)+(v2**2)/2)
   
//Result
plot(x, y)
xlabel("wt");
ylabel("V");
title('v = 4 + 6 sin wt');
printf("(b) Vrmax = %.3f V",vrmax)
