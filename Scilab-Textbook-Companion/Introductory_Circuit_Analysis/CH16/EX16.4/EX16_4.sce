//Chapter 16, Example 16.4
clc

//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    th=atand(y/x)
endfunction
//subtraction
function[c1,c2]=subtraction(x1,x2,y1,y2)
    c1 = x1-x2
    c2 = y1-y2
    endfunction
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
//Variable Declaration
x=complex(3,4)     //complex form of Z1
y=complex(8,-6)    //complex form of Z2
ea = 100           //source in volts
eo = 0             //angle in degree
xo = 90            
//Calculation
[a,b]=rect2polar(real(x),imag(x))   //function of conversion
[c,d]=rect2polar(real(y),imag(y))   //function of conversion
[e,f]=voltdivider(a,c,b,d)   //function of conversion
[g,h]=addition(real(x),real(y),imag(x),imag(y))
[gg,hh]=rect2polar(g,h)   //function of conversion
[i,j]=division(e,gg,f,hh)  //function of division
[k,l]=division(ea,i,eo,j)  //function of division
[m,n]=division(ea,a,eo,b)  //function of division
[mm,nn]=division(ea,c,eo,d)  //function of division
[o,p]=voltdivider(m,real(x),n,eo)  //function of multiplication
[oo,pp]=voltdivider(mm,real(y),nn,eo)  //function of multiplication
[q,r]=voltdivider(real(x),ea,eo,eo)  //function of multiplication
[s,t]=polar2rect(real(x),eo)   //function of conversion
[ss,tt]=polar2rect(imag(x),xo)   //function of conversion
[sa,ta]=addition(s,ss,t,tt)     //function of addition
[sb,tb]=rect2polar(sa,ta)
[qa,ra]=division(q,sb,r,tb)     //function of division
[v,w]=polar2rect(oo,pp)   //function of conversion
[vv,ww]=polar2rect(o,p)   //function of conversion
[va,wa]=subtraction(v,vv,w,ww)  //function of subtraction
[vb,wb]=rect2polar(va,wa)   //function of conversion
//Results
printf("Zt = %.3f ohm < %.2f degree \n",i,j)
printf("Is = %.2f A < %.2f degree \n",k,l)
printf("I1 = %d A < %.2f degree \n",m,n)
printf("I2 = %d A < %.2f degree \n",mm,nn)
printf("Vr1 = %d V < %.2f degree \n",o,p)
printf("Vr2 = %d V < %.2f degree \n",oo,pp)
printf("Vr1 = %d V < %.2f degree \n",qa,ra)
printf("Vab = %d V < %.2f degree \n",vb,wb)
