//Chapter 18, Example 18.14
clc;

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
    s=y1-y2
endfunction

//division
function[q,x]=division(x1,x2,y1,y2)
       q=x1/x2
       x=y1-y2
   endfunction
//Variable Declaration
z1=complex(3,4)    //complex form of Z1
z2=complex(0,-5)   //complex form of Z2
e1 = 20            //real value of voltage
e1o = 0            //angle in degree

//Calculation
[a,b]=rect2polar(real(z1),imag(z1))   //function of conversion
[c,d]=rect2polar(real(z2),imag(z2))   //function of conversion
[ca,da]=voltdivider(a,c,b,d)   //function of multiplication
[cb,db]=addition(real(z1),real(z2),imag(z1),imag(z2))
[cc,dd]=rect2polar(cb,db)   //function of conversion
[e,f]=division(ca,cc,da,dd)   //function of division
[o,p]=polar2rect(e,f)   //function of conversion
[m,n]=division(e1,a,e1o,b)   //function of division
//Resultss
printf("Zn = %.2f ohm %.2fj ohm \n",o,p)
printf("In = %d A < %.2f degree \n",m,n)
