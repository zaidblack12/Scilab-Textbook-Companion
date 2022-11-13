//Chapter 16, Example 16.5
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
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    th=atand(y/x)
endfunction

//division
function[q,x]=division(x1,x2,y1,y2)
       q=x1/x2
       x=y1-y2
   endfunction
//Variable Declaration
ra = 50*10^3        //real value of Ra
rao = 0             //angle in degree
rb = 3.3*10^3       //real value of Rb
rbo = 0             //angle in degree
x=complex(1*10^3,-159.16)   //complex form of Z2
ia = 4*10^-3                //real value of current in milliampere
iao = 0             //angle in degree
y=complex(1*10^3,-0.796)    //complex form of Z2

//Calculation
z1 = (ra*rb)/(ra+rb)          //Z1 in kilo ohms
[a,b]=voltdivider(z1,ia,rao,iao)  //function of mltiplicaion
[c,d]=addition(z1,real(x),rao,imag(x))
[g,h]=rect2polar(c,d)       //function of conversion
[j,k]=division(a,g,b,h)   //function of division
[m,n]=voltdivider(j,real(x),k,rao)  //function of mltiplicaion
[cc,dd]=addition(z1,real(y),rao,imag(y))
[gg,hh]=rect2polar(cc,dd)
[jj,kk]=division(a,gg,b,hh)   //function of division
[mm,nn]=voltdivider(jj,real(y),kk,rao)  //function of mltiplicaion


//Results
printf("a. VL = %.3f V < %.3f degree \n",m,n)
printf("b. VL = %.3f V < %.3f degree \n",mm,nn)
