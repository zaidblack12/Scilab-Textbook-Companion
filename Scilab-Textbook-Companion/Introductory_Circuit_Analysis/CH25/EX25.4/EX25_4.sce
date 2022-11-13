//Chapter 25, Example 25.4
clc
//Initialisation
funcprot();
//Polar to Rectangle Conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction

//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    th=atand(y/x)
endfunction

//Accordng to phasor algebra
[r1,i1]=polar2rect(1,0)
[r2,i2]=polar2rect(1,0)

//Calculation
ar1=r1+r2
ai1=i1+i2
[ar2,ath2] = rect2polar(ar1,ai1)
x = 0 : 0.1 : 10
y = ar2*sin(x+ath2*3.14/180)

   
//Result
plot(x, y)
xlabel("a = wt");
ylabel("V");
title('v = 2 + 1 cos a + 2 sin a');
