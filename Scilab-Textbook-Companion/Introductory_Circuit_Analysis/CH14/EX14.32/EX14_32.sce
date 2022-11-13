//Chapter 14, Example 14.32
clc
 funcprot(0)
function[m,n]=time2phasor(x,y)
    m=0.707*x
    n=y
endfunction

//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction
//subtraction
function[c1,c2]=subtraction(x1,x2,y1,y2)
    c1 = x1-y1
    c2 = x2-y2
    endfunction

//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    if x==0 then
        th=-90
    elseif x<0 then 
        th=atand(y/x)+180
    else
        th=atand(y/x)
      if (x<0) & (y<0) then
            th=th-180
        end
    end
endfunction
//phasor to time domain
function[m,n]=phasor2time(x,y)
    m=sqrt(2)*x
    n=y
endfunction
//Variable Declaration
x1= 120*10^-3             //maximum voltage of iT
y1=60                     //angle in degree
x2 = 80*10^-3             //maximum voltage of i1
y2 = 0                    //angle in degree
//Calculation
[a,b]=time2phasor(x1,y1)   //function of conversion
[c,d]=time2phasor(x2,y2)   //function of conversion
[e,f]=polar2rect(a,b)   //function of conversion
[g,h]=polar2rect(c,d)   //function of conversion
[i,j]=subtraction(e,f,g,h)    //subtraction
[k,l]=rect2polar(i,j)   //function of conversion
[o,p]=phasor2time(k,l)   //function of conversion
//Results
printf("i2 = %.1f x 10^-3 sin(wt + %.2f degree) ",o*10^3,p)
