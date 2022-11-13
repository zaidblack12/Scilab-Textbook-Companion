//Chapter 15, Example 15.8
clc
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    th=atand(y/x)
endfunction


//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction

//addition
function[c1,c2]=addition(x1,x2,x3,y1,y2,y3)
    c1 = x1+x2+x3
    c2 = y1+y2+y3
    endfunction

//Variable Declaration
r=6                               //resistance in ohms
ro = 0                            //angle in degree
xl = 10                           //in ohms
xlo = 90                          //angle in degree
xc = 12                           //in ohms
xco = -90                         //angle in degree
//Calculation
[a,b]=polar2rect(r,ro)            //Z1
[c,d]=polar2rect(xl,xlo)          //Z2
[e,f]=polar2rect(xc,xco)          //Z3
[g,h]=addition(a,c,e,b,d,f)       //Z1+Z2+Z3
[i,j]=rect2polar(g,h)             //ZT
//Results
printf("ZT = %.3f ohm < %.2f degree",i,j)
