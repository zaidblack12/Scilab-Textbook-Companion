//Chapter 16, Example 16.3
clc
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    if x==0 then
        th=-90
    else
        th=atand(y/x)
    end
endfunction
//Rectangle to Polar Conversion
function [r,th] = rect2polar1(x,y)
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
z1=complex(5,0)        //complex form of Z1
z2= complex(0,-12)        //complex form of Z2
z3 = complex(0,8)        //complex form of Z3
e1 = 20                   //real part of voltage
e1o = 20                  //angle in degree

//Calculation
[a,b]=rect2polar(real(z2),imag(z2))    //function of conversion 
[aa,bb]=voltdivider(a,e1,b,e1o)     //function of multiplication
[c,d]=addition(real(z1),real(z2),imag(z1),imag(z2))    //function of addition
[cc,dd]=rect2polar(c,d)    //function of conversion 
[e,f]=division(aa,cc,bb,dd)    //function of division
[ee,ff]=rect2polar1(real(z3),imag(z3))    //function of conversion 
[g,h]=division(e1,ee,e1o,ff)    //function of division
[gg,hh]=division(e1,cc,e1o,dd)    //function of division
[o,p]=polar2rect(g,h)    //function of conversion 
[oo,pp]=polar2rect(gg,hh)    //function of conversion 
[m,n]=addition(o,oo,p,pp)    //function of addition
[mm,nn]=rect2polar(m,n)    //function of conversion 
//Results
printf("a. Vc = %.2f V < %.2f degree \n",e,f)
printf("b. I1 = %.1f A < %.2f degree \n",g,h)
printf("   I2 = %.2f A < %.2f degree \n",gg,hh)
printf("   Is = %.2f A < %.2f degree \n",mm,nn)
