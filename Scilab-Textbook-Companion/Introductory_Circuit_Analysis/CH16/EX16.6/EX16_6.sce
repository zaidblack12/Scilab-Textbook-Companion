//Chapter 16, Example 16.6
clc
   //multiplication
function [r,s] = voltdivider(x1,x2,y1,y2)
    r=x1*x2
    s=y1+y2
endfunction
function[c1,c2]=addition(x1,x2,y1,y2)
    c1 = x1+x2
    c2 = y1+y2
    endfunction

//division
function[q,x]=division(x1,x2,y1,y2)
       q=x1/x2
       x=y1-y2
   endfunction
   //Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    th=atand(y/x)
endfunction

//Variable Declaration
it = 2.626*10^-3     //real value of current in milliampere
ito = 51.02          //angle in degree
z1 = 1.545*10^3      //real value of Z1
z1o = 0              //angle in degree
x=complex(10*10^3,-20*10^3)   //complex form of Z2

//Calculation
[a,b]=voltdivider(z1,it,z1o,ito)   //function of multiplication
[c,d]=addition(z1,real(x),z1o,imag(x))  //function of addition
[e,f]=rect2polar(c,d)   //function of conversion
[m,n]=division(a,e,b,f)  //function of division
[o,p]=rect2polar(real(x),imag(x))   //function of conversion
[mm,nn]=voltdivider(m,o,n,p)   //function of multiplication



//Results
printf("a. I = %.3f mA < %.3f degree \n",m*10^3,n)
printf("b. V = %.3f V < %.3f degree \n",mm,nn)
