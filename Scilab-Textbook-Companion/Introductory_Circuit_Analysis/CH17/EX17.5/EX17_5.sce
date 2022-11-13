//Chapter 17, Example 17.5
clc
funcprot(0)
//addition
function[c1,c2]=addition(x1,x2,x3,y1,y2,y3)
    c1 = x1+x2+x3
    c2 = y1+y2+y3
    endfunction
//subtaction
function[c1,c2]=subtraction(x1,x2,y1,y2)
    c1 = x1-x2
    c2 = y1-y2
    endfunction
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
      if (x<0) & (y<0) then
            th=th-180
        end
    end
endfunction
//Rectangle to Polar Conversion
function [r,th] = rect2polar1(x,y)
    r=sqrt((x**2)+(y**2))
    if x==0 then
        th=90
    else
        th=atand(y/x)
      if (x<0) & (y<0) then
            th=th-180
        end
    end
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
z1 = complex(0,2)     //complex form of Z1
z2 = complex(4,0)     //complex form of Z2
z3 = complex(0,-1)     //complex form of Z3
e1 = 2                  //source voltage in volts
e1o = 0                 //angle in degree
e2 = 6                  //source voltage in volts
e2o = 0                 //angle in degree

//Calculation
a= ((e1-e2)*real(z2))     //real part of numerator
b=e1*imag(z3)             //imaginary part of numerator
[c,d]=rect2polar(a,b)        //function of conversion

[e,f]=rect2polar1(real(z1),imag(z1))    //z1 function of conversion
[g,h]=rect2polar(real(z2),imag(z2))    //z2 function of conversion
[i,j]=rect2polar(real(z3),imag(z3))    //z3 function of conversion
[ca,da]=voltdivider(e,g,f,h)           //z1*z2 function of multiplication
[cb,db]=voltdivider(e,i,f,j)           //z1*z3 function of multiplication
[cc,dd]=voltdivider(g,i,h,j)           //z2*z3 function of multiplication
[s,t]=polar2rect(ca,da)                //function of conversion
[sa,ta]=polar2rect(cb,db)              //function of conversion
[sb,tb]=polar2rect(cc,dd)              //function of conversion

[o,p]=addition(s,sa,sb,t,ta,tb)        //function of addition
[m,n]=rect2polar(o,p)                 //function of conversion
[mm,nn]=division(c,m,d,n)          //function of division
//Results
printf("I1 = %.2f A < %.2f degree \n",mm,nn)
