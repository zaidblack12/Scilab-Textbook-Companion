//Chapter 18, Example 18.5
clc
funcprot(0)
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    th=atand(y/x)
endfunction
function[c1,c2]=addition(x1,x2,y1,y2)
    c1 = x1+x2
    c2 = y1+y2
endfunction
//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction

  //multiplication
function [r,s] = voltdivider(x1,x2,y1,y2)
    r=x1*x2
    s=y1+y2
endfunction
//Variable Declaration
z1 = 4        //real value of Z1
z1o = 0       //angle in degree
z2 = complex(6,8)     //complex form of Z2
u=20               //unit
v=10               //real value of voltage
vo = 0             //angle in degree 
h=100              //unit
iu = 20*10^-3        //current in milliampere
//Calculation
[a,b]=addition(z1,real(z2),z1o,imag(z2))  //function of addition
[c,d]=rect2polar(a,b)   //function of conversion
e=1/c                                          //I1
f=-d
[g,ha]=voltdivider(z1,e,z1o,f)      //I2 function of multiplication
i=e*u*v
[m,n]=polar2rect(i,f)      //I1 function of conversion
j=g*h*iu
[ma,na]=polar2rect(j,ha)   //function of conversion)
[q,r]=addition(m,ma,n,na)  //function of addition
[qa,ra]=rect2polar(q,r)   //function of conversion
//Results
printf("I2 = %.2f A < %.2f degree \n",qa,ra)
