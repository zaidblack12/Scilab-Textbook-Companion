//Chapter 14, Example 14.31
clc
 funcprot(0)
//time to phasor
function[m,n]=time2phasor(x,y)
    m=0.707*x
    n=y
endfunction

//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction
//addition
function[c1,c2]=addition(x1,x2,y1,y2)
    c1 = x1+y1
    c2 = y2+x2
endfunction

//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    th=atand(y/x)
endfunction
//phasor to time domain
function[m,n]=phasor2time(x,y)
    m=sqrt(2)*x
    n=y
endfunction
//Variable Declaration
x1=50                     //maximum voltage of Va
y1=30                     //angle in degree of Va
x2=30                     //maximum voltage of Vb
y2=60                     //angle in degree of Vb
//Calculation
[a,b]=time2phasor(x1,y1)   //function of conversion
[c,d]=time2phasor(x2,y2)   //function of conversion
[e,f]=polar2rect(a,b)   //function of conversion
[g,h]=polar2rect(c,d)   //function of conversion
[i,j]=addition(e,f,g,h)     //function of addition
[k,l]=rect2polar(i,j)   //function of conversion
[o,p]=phasor2time(k,l)   //function of conversion
//Results
printf("ein = %.2f sin(377t + %.2f degree)",o,p)
