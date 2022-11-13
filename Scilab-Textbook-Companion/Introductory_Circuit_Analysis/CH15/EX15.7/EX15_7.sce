//Chapter 15, Example 15.7
clc
//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction

//addition
function[c1,c2]=addition(x1,x2,y1,y2)
    c1 = x1+x2
    c2 = y1+y2
    endfunction
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    th=atand(y/x)
endfunction
//Variable Declaration
r = 4                              //resistance in ohms
ro = 0                             //angle in degree
xl = 8                             //inductive reactance in ohms
xlo = 90                           //angle in degree
//Calculation
[a,b]=polar2rect(r,ro)             //Z1
[c,d]=polar2rect(xl,xlo)           //Z2
[e,f]=addition(a,c,b,d)            //Z1+Z2
[g,h]=rect2polar(e,f)              //ZT

//Results
printf("ZT = %.3f ohm < %.2f degree",g,h)
