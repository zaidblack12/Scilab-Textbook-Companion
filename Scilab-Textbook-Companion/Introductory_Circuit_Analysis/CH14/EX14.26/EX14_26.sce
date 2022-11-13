//Chapter 14, Example 14.26
clc
//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction

//division
function[q,x]=division(x1,x2,y1,y2)
       q=x1/x2
       x=y1-y2
   endfunction
   //subtraction
function[c1,c2]=subtraction(x1,x2,y1,y2)
    c1 = x1-x2
    c2 = y1-y2
    endfunction
//addition
function[c1,c2]=addition(x1,x2,y1,y2)
    c1 = x1+x2
    c2 = y1+y2
endfunction
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
//Variable Declaration
x1 = complex(2,3)         //complex form of x1
x2 = complex(4,6)         //complex form of x2
y1 = complex(7,7)         //complex form of x3
y2 = complex(3,-3)         //complex form of x4
x3 = 50                    //real value
y3 = 30                  //angle in degree
x4 = complex(5,5)         //complex form of x5
x5 = 10                    //real value
y5= -20                  //angle in degree
x6 = 2                    //real value
y6 = 20                  //angle in degree
x7 = complex(3,4)         //complex form of x6
x8 = complex(8,-6)         //complex form of x7
x9 = 3                    //real value
y9 = 27                  //angle in degree
x10 = 6                    //real value
y10 = -40                  //angle in degree
//Calculation
[a,b]=addition(real(x1),real(x2),imag(x1),imag(x2))    //function of addition
[c,d]=subtraction(real(y1),real(y2),imag(y1),imag(y2))   //function of subtraction
[aa,bb]=rect2polar(a,b)    //function of conversion
[cc,dd]=rect2polar(c,d)    //function of conversion
[e,f]=voltdivider(aa,cc,bb,-dd)   //function of multiplication
[g,h]=voltdivider(cc,cc,dd,-dd)   //function of multiplication
[m,n]=division(e,g,f,h)   //function of division
[mm,nn]=polar2rect(m,n)    //function of conversion
[o,p]=rect2polar(real(x4),imag(x4))    //function of conversion
[oo,pp]=voltdivider(x3,o,y3,p)   //function of multiplication
[ee,ff]=division(oo,x5,pp,y5)   //function of division
[gg,hh]=voltdivider(x6,x6,y6,y6)   //function of multiplication
[i,j]=rect2polar(real(x7),imag(x7))    //function of conversion
[ii,jj]=voltdivider(gg,i,hh,j)   //function of multiplication
[s,t]=rect2polar(real(x8),imag(x8))    //function of conversion
[ss,tt]=division(ii,s,jj,t)   //function of division
[v,w]=polar2rect(x9,y9)    //function of conversion
[vv,ww]=polar2rect(x10,y10)    //function of conversion
[ma,na]=subtraction(v,vv,w,ww)   //function of subtraction

//Results
printf("a. = %.3f + j%.3f \n",mm,nn)
printf("b. = %.2f < %d degree \n",ee,ff)
printf("c. = %.1f < %d degree \n",ss,tt)
printf("d. = %.3f + j %.3f \n",ma,na)
