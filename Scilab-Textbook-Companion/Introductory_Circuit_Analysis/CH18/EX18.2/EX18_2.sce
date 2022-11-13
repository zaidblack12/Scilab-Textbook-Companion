//Chapter 18, Example 18.2
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
   //multiplication
function [r,s] = voltdivider(x1,x2,y1,y2)
    r=x1*x2
    s=y1+y2
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

//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction
//Variable Declaration
z1 = complex(0,6)       //complex form of Z1
z2 = complex(6,-8)      //complex form of Z2
i1 = 2                  //current in ampere
e1= 20                  //real value of voltage
e1o = 30                //angle in degree
//Calculation
[a,b]=addition(real(z1),real(z2),imag(z1),imag(z2))  //function of addition
[aa,bb]=rect2polar(a,b)   //function of conversion
c=imag(z1)*i1             //imaginary part
[i,j]=rect2polar(real(z1),c)   //function of conversion   
[e,f]=division(i,aa,j,bb)         //I1 function of division
[m,n]=division(e1,aa,e1o,bb)     //I2 function of division
[o,p]=polar2rect(e,f)   //function of conversion
[oo,pp]=polar2rect(m,n)   //function of conversion
[s,t]=addition(o,oo,p,pp)  //function of addition
[ss,tt]=rect2polar(s,t)   //function of conversion
//Results
printf("I = %.2f A < %.2f degree \n",ss,tt)
