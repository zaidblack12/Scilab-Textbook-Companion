//Chapter 18, Example 18.16
clc
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    th=atand(y/x)
endfunction
 //multiplication
function [r,s] = voltdivider(x1,x2,y1,y2)
    r=x1*x2
    s=y1+y2
endfunction
//Variable Declaration
zn = complex(7.50,2.50)         //complex form of Zn
in = 2.68                     //real value of current
ino = -10.3                   //angle in degree

//Calculation
[a,b]=rect2polar(real(zn),imag(zn))    //function of conversion
[c,d]=voltdivider(in,a,ino,b)   //function of multiplication


//Results
printf("Eth = %.1f V < %.2f degree \n",c,d)
