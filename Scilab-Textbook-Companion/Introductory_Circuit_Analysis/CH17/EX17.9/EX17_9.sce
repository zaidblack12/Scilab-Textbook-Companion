//Chapter 17, Example 17.9
clc


//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction

//addition
function[c1,c2]=addition(x1,x2,x3,y1,y2,y3)
    c1 = x1+x2+x3
    c2 = y1+y2+y3
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

function[c1,c2]=subtraction(x1,x2,y1,y2)
    c1 = x1-x2
    c2 = y1-y2
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
//Variable Declaration
z1 = complex(1,2)     //complex form of Z1
z2 = complex(4,-8)    //complex form of Z2
z3 = complex(0,6)     //complex form of Z3
e1 = 8                //source of voltage in volts
e1o = 20              //angle in degree
e2 = 10                //source of voltage in volts
e2o = 0              //angle in degree

//Calculation
[a,b]=rect2polar(real(z2),imag(z2))     //z2 function of conversion
[aa,bb]=voltdivider(a,e1,b,e1o)      //function of multiplication
[ac,bc]=polar2rect(aa,bb)    //function of conversion
[c,d]=rect2polar(real(z1),imag(z1))     //z1 function of conversion
[ca,da]=voltdivider(c,e2,d,e2o)      //function of multiplication
[cb,db]=polar2rect(ca,da)    //function of conversion
[cc,dd]=subtraction(ac,cb,bc,db)   //function of subtraction
[e,f]=rect2polar(cc,dd)    //function of conversion
[ea,fa]=voltdivider(c,a,d,b)         //Z1*z2 function of multiplication
[ee,ff]=polar2rect(ea,fa)    //function of conversion
[g,h]=rect2polar(real(z3),imag(z3))     //z3 function of conversion
[ga,ha]=voltdivider(c,g,d,h)         //z1*z3 function of multiplication
[gg,hh]=polar2rect(ga,ha)    //function of conversion
[gb,hb]=voltdivider(a,g,b,h)        //z2*z3 function of multiplication
[m,n]=polar2rect(gb,hb)    //function of conversion
[mm,nn]=addition(ee,gg,m,ff,hh,n)   //function of addition
[ma,na]=rect2polar(mm,nn)    //function of conversion
[mb,nb]=division(e,ma,f,na)    //function of division


//Results
printf("I2 = %.2f A < %.2f degree",mb,nb)
