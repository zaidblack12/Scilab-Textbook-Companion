//Chapter 18, Example 18.15
clc
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
z1=complex(2,-4)       //complex form of z1
z2=complex(1,0)        //complex form of z2
z3=complex(0,5)        //complex form of z3
i = 3                  //current in ampere
//Calculation
[a,b]=addition(real(z1),real(z2),imag(z1),imag(z2))     //z1+z2 in comp
[aa,bb]=rect2polar(a,b)               //z1+z2 in polar form
[ac,bc]=rect2polar(real(z3),imag(z3))    //z3 in polar form
[ad,bd]=voltdivider(ac,aa,bc,bb)          //z3(z1+z2)
[ae,be]=addition(real(z3),a,imag(z3),b)    //z3+(z1+z2) in complex
[af,bf]=rect2polar(ae,be)         //function of conversion
[ag,bg]=division(ad,af,bd,bf)     //function of division
[ah,bh]=polar2rect(ag,bg)         //function of conversion
za = real(z1)*i            //real part
zb = imag(z1)*i           //imaginary pary
[c,d]=rect2polar(za,zb)         //function of conversion
[e,f]=division(c,aa,d,bb)      //function of division
//Results
printf("Zn = %.2f ohm + j%.2f ohm \n",ah,bh)
printf("In = %.2f A < %.1f degree \n",e,f)
