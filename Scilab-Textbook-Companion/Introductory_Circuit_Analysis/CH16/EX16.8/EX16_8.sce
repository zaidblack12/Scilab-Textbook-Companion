//Chapter 16, Example 16.8
clc
funcprot(0)
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

function[c1,c2]=addition(x1,x2,y1,y2)
    c1 = x1+x2
    c2 = y1+y2
endfunction

function[c1,c2]=subtraction(x1,x2,y1,y2)
    c1 = x1-x2
    c2 = y1-y2
    endfunction
//Variable Declaration
z1 = 4                   //real value of Z1
z1o = 0                  //angle in degree
z2=complex(9,-7)         //complex form of Z2
z3=complex(8,6)         //complex form of Z3
ev = 100               //source voltage in volts
eo = 0                 //angle in degree

//Calculation
[a,b]=rect2polar(real(z2),imag(z2))      //function of conversion
[c,d]=rect2polar(real(z3),imag(z3))      //function of conversion
[e,f]=voltdivider(a,c,b,d)   //function of multiplication
[ee,ff]=addition(real(z2),real(z3),imag(z2),imag(z3))
[m,n]=rect2polar(ee,ff)      //function of conversion
[ea,fa]=division(e,m,f,n)    //function of division
[eb,fb]=polar2rect(ea,fa)      //function of conversion
[g,h]=addition(z1,eb,z1o,fb)   //function of addition
[gg,hh]=rect2polar(g,h)      //function of conversion
[o,p]=division(ev,gg,eo,hh)    //function of division
fp=gg/gg
[i,j]=voltdivider(a,o,b,p)   //function of multiplication
[q,r]=division(i,m,j,n)    //function of division
[qa,ra]=polar2rect(q,r)      //function of conversion
[qb,rb]=polar2rect(o,p)      //function of conversion
[s,t]=subtraction(qb,qa,rb,ra)  //function of subtraction
[ss,tt]=rect2polar(s,t)      //function of conversion
pt = ev*o*cosd(1.5)         //power in watt
//Results
printf("a. Zt = %.3f ohm < %.1f degree \n",gg,hh)
printf("b. I = %.2f A < %.1f degree \n",o,p)
printf("c. Fp = %d \n",fp)
printf("I2 = %.2f A < %d degree \n",q,r)
printf("I1 = %.1f A < %.2f degree \n",ss,tt)
printf("Pt = %.2f W \n",pt)
