//Chapter 16, Example 16.2
clc
//multiplication
function [r,s] = voltdivider(x1,x2,y1,y2)
    r=x1*x2
    s=y1+y2
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
//addition
function[c1,c2]=addition(x1,x2,y1,y2)
    c1 = x1+x2
    c2 = y1+y2
endfunction
//division
function[q,x]=division(x1,x2,y1,y2)
       q=x1/x2
       x=y1-y2
   endfunction

//Variable Declaration
x=complex(3,4)     //complex form of Z1
y=complex(0,-8)     //complex form of Z2
i = 50                //real value of current in ampere
io = 30               //angle in degree 
//Calculation

[a,b]=rect2polar(real(x),imag(x))    //function of conversion
[c,d]=rect2polar(real(y),imag(y))    //function of conversion
[aa,bb]=voltdivider(c,i,d,io)  //function og multiplication
[cc,dd]=addition(real(y),real(x),imag(y),imag(x))
[e,f]=rect2polar(cc,dd)    //function of conversion
[ee,ff]=division(aa,e,bb,f)  //function of division
[ac,bc]=voltdivider(a,i,b,io)  //function og multiplication
[ea,fa]=division(ac,e,bc,f)  //function of division
[m,n]=polar2rect(ee,ff)    //function of conversion
[mm,nn]=polar2rect(ea,fa)    //function of conversion
[ma,na]=addition(m,mm,n,nn)   //function of addition
[mb,nb]=rect2polar(ma,na)    //function of conversion
//Results
printf("a. I1 = %d A < %.2f degree \n",ee,ff)
printf("b. I2 = %d A < %.2f degree \n",ea,fa)
printf("c. %d A < %d degree = %d A < %d degree (checks) ",mb,nb,mb,nb)
