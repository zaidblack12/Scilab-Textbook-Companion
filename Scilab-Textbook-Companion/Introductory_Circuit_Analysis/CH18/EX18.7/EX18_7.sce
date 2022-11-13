//Chapter 18, Example 18.7
clc
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
   
//division
function[q,x]=division1(x1,x2,y1,y2)
       q=x1/x2
       x=y1+y2
   endfunction
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    if x==0 then
        th=-90
    else
        th=atand(y/x)
    end
endfunction

//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction

function[c1,c2]=addition(x1,x2,y1,y2)
    c1 = x1+x2
    c2 = y1+y2
    endfunction
//Variable Declaration
z1=complex(0,8)      //complex form of Z1
z2=complex(0,-2)     //complex form of Z2
ea= 10               //source voltage in volts
eo = 0               //angle in degree
//Calculation
[a,b]=rect2polar(real(z1),imag(z1))   //function of conversion
[c,d]=rect2polar(real(z2),imag(z2))   //function of conversion
[e,f]=voltdivider(a,c,b,d)  //function of multiplication
[g,h]=addition(real(z1),real(z2),imag(z1),imag(z2))
[gg,hh]=rect2polar(g,h)   //function of conversion
[o,p]=division(e,gg,f,hh)     //function of division
[s,t]=voltdivider(c,ea,d,eo)  //function of multiplication
[ss,tt]=rect2polar(g,h)   //function of conversion
[oo,pp]=division1(s,ss,t,tt)   //function of conversion


//Results
printf("Zth = %.2f ohm < %d degree \n",o,p)
printf("Eth = %.2f V < %d degree \n",oo,pp)
