//Chapter 15, Example 15.16
clc
//division
function[q,x]=division(x1,x2,y1,y2)
       q=x1/x2
       x=y1-y2
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
zc= 2                  //real value of Zc
zco = -90              //angle in degree
it = 5                  //real value of It
itt = 30              //angle in degree
zr = 1               //real part of Zrl
zl = 8               //imaginary part of Zl
xx = zl-zc           //imaginary part of Zcrl
//Calculation
[a,b]=voltdivider(zc,it,zco,itt)  //function of multiplication
[c,d]=rect2polar(zr,xx)         //function of conversion
[e,f]=division(a,c,b,d)       //function of division
[m,n]=rect2polar(zr,zl)         //function of conversion
[i,j]=voltdivider(m,it,n,itt)  //function of multiplication
[s,t]=division(i,c,j,d)       //function of division
//Results
printf("Irl = %.3f A < %.2f degree \n",e,f)
printf("Ic = %.3f A < %.2f degree",s,t)
