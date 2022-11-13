//Chapter 18, Example 18.8
clc
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
//Variable Declaration
z1=complex(6,8)       //complex form of Z1
z2=complex(3,-4)      //complex form of Z2
z3=complex(0,5)       //complex form of Z3
ea= 10                //real value of voltage
eo = 0                //angle in degree
//Calculation 
[aa,bb]=rect2polar(real(z1),imag(z1))  //function of conversion
[ac,bc]=rect2polar(real(z2),imag(z2))  //function of conversion
[a,b]=voltdivider(aa,ac,bb,bc)   //function of multiplication
[g,h]=addition(real(z1),real(z2),imag(z1),imag(z2))  //function of addition
[i,j]=rect2polar(g,h)  //function of conversion
[ii,jj]=division(a,i,b,j)   //function of division
[ia,ja]=polar2rect(ii,jj)  //function of conversion
[gg,hh]=addition(real(z3),ia,imag(z3),ja)  //function of addition
[ga,ha]=rect2polar(gg,hh)  //function of conversion
[c,d]=voltdivider(ac,ea,bc,eo)   //function of multiplication
[ca,da]=division(c,i,d,j)   //function of division

//Results
printf("Zth = %.2f ohm < %.2f degree \n",ga,ha)
printf("Eth = %.2f V < %.2f degree \n",ca,da)
