//Chapter 18, Example 18.19
clc
funcprot(0)
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    if x==0 then
        th=90
    else
        th=atand(y/x)
    end
endfunction


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
   //multiplication
function [r,s] = voltdivider(x1,x2,y1,y2)
    r=x1*x2
    s=y1+y2
endfunction

//division
function[q,x]=division(x1,x2,y1,y2)
       q=x1/x2
       x=y1-y2
   endfunction
//Variable Declaration
z1 = complex(6,-8)
z2 = complex(0,8)
e1 = 9
e1o = 0
//Calculation
[a,b]=rect2polar(real(z1),imag(z1))
[c,d]=rect2polar(real(z2),imag(z2))
[e,f]=voltdivider(a,c,b,d)
[g,h]=addition(real(z1),real(z2),imag(z1),imag(z2))
[gg,hh]=rect2polar(g,h)
[o,p]=division(e,gg,f,hh)
[oo,pp]=polar2rect(o,p)
[aa,bb]=voltdivider(c,e1,d,e1o)
[cc,dd]=division(aa,gg,bb,hh)
pmax = (cc*cc)/(4*a)
//Results
printf("ZL =  %.2f ohm + j%d ohm \n",oo,pp)
printf("Pmax = %.2f W ",pmax)
