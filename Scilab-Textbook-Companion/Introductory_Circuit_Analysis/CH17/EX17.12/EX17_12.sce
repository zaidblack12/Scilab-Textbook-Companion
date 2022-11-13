//Chapter 17, Example 17.12
clc
funcprot(0)
//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction

//addition
function[c1,c2]=addition(x1,x2,y1,y2)
    c1 = x1+x2
    c2 = y1+y2
    endfunction
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    if x==0 then
        th=90
    else
        th=atand(y/x)
      if (x<0) & (y<0) then
            th=th-180
        end
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
z1 = 24                    //real part in milliampere
z1o = 0                 //angle in degree
z2 = -0.539                    //real part in milliampere
z2o = 21.80                 //angle in degree
z3 = 0.5                    //real part in milliampere
z3o = 0                 //angle in degree
z4 = 4                    //real part in milliampere
z4o = 0                 //angle in degree
z5 = 2.5                    //real part in milliampere
z5o= -2.29                 //angle in degree

//Calculation
[a,b]=voltdivider(z1,z2,z1o,z2o)   //z1*z2 function of multiplication
[aa,bb]=voltdivider(z3,z4,z3o,z4o)  //z3*z4 function of multiplication
[ac,bc]=polar2rect(a,b)                //function of conversion
[ad,bd]=polar2rect(aa,bb)                //function of conversion
[c,d]=addition(ac,ad,bc,bd)    //function of addition
[ca,da]=rect2polar(c,d)                //function of conversion
[m,n]=voltdivider(z5,z2,z5o,z2o)      //function of multiplication
[ma,na]=voltdivider(z3,z3,z3o,z3o)    //function of multiplication
[mb,nb]=polar2rect(m,n)                //function of conversion
[mc,nc]=polar2rect(ma,na)                //function of conversion
[md,nd]=addition(mb,mc,nb,nc)    //function of addition
[me,ne]=rect2polar(md,nd)                //function of conversion
[o,p]=division(ca,me,da,ne)           //function of division
//Results
printf("V1 = %.2f V < %.2f degree ",o,p)
