//Chapter 15, Example 15.15
clc
  //multiplication
function [r,s] = voltdivider(x1,x2,y1,y2)
    r=x1*x2
    s=y1+y2
endfunction

//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    th=atand(y/x)
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

//division
function[q,x]=division(x1,x2,y1,y2)
       q=x1/x2
       x=y1-y2
   endfunction
//Variable Declaration
zl = 4                   //real value of Zl
zlo = 90                 //angle in degree
it = 20                   //real value of It
ito = 0                  //angle in degree
zr = 3                   //real value of Zr
zro = 0                 //angle in degree

//Calculation
[a,b]=voltdivider(zl,it,zlo,ito)  //function of multiplication
[c,d]=polar2rect(zr,zro)         //function of conversion
[e,f]=polar2rect(zl,zlo)         //function of conversion
[i,j]=addition(c,d,e,f)       //function of addition
[o,p]=rect2polar(i,j)         //function of conversion
[m,n]=division(a,o,b,p)      //function of division
[aa,bb]=voltdivider(zr,it,zro,ito)  //function of multiplication
[mm,nn]=division(aa,o,bb,p)      //function of division
//Results
printf("Ir = %d A < %.2f degree \n",m,n)
printf("It = %d A < %.2f degree \n",mm,nn)
