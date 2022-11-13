//Chapter 18, Example 18.1
clc
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    if x==0 then
        th=-90
    else
        th=atand(y/x)
    end
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
//addition
function[c1,c2]=addition(x1,x2,y1,y2)
    c1 = x1+x2
    c2 = y1+y2
    endfunction

//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction
//Variable Declaration
z1 = complex(0,4)          //complex form of Z1
z2 = complex(0,4)          //complex form of Z2
z3 = complex(0,-3)         //complex form of Z3
e1 = 10                    //real value of voltage
e1o = 0                    //angle in degree
e2 = 5                     //real value of voltage
e2o = 0                    //angle in degree
//Calculation
[a,b]=rect2polar(real(z2),imag(z2)) //function of conversion 
[c,d]=rect2polar(real(z3),imag(z3)) //function of conversion
[e,f]=voltdivider(a,c,b,d)   //function of multiplication
[g,h]=addition(real(z2),real(z3),imag(z2),imag(z3)) //function of addition
[gg,hh]=rect2polar(g,h) //function of conversion
[m,n]=division(e,gg,f,hh)              //z23 in ohms
[mo,no]=polar2rect(m,n)
[o,p]=addition(mo,real(z1),no,imag(z1))  //function of addition
[oo,pp]=rect2polar(o,p) //function of conversion
[s,t]=division(e1,oo,e1o,pp)     //Is1 in ampere
[ss,tt]=polar2rect(s,t) //function of conversion
[aa,ba]=voltdivider(c,s,d,t)  //function of multiplication
[ab,bb]=rect2polar(aa,ba) //function of conversion
[ac,bc]=division(ab,gg,bb,hh)   //I  in ampere
z12 = imag(z1)/2            //imaginary part of Z12
[cc,dd]= addition(real(z1),real(z3),z12,imag(z3))
[ca,da]=rect2polar(cc,dd) //function of conversion
[cb,db]=division(e2,ca,e2o,da)     //Is2
i2 = cb/2                    //in ampere
[ma,na]=polar2rect(cb,db) //function of conversion
[mm,nn]=addition(ss,ma,tt,na)    //function of addition
[mb,nb]=rect2polar(mm,nn)        //final I function of conversion


//Results
printf("I = %.2f A < %.2f degree \n",mb,nb)
