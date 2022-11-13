//Chapter 15, Example 15.10
clc
funcprot(0)
//addition
function[c1,c2]=addition1(x1,x2,y1,y2)
    c1 = x1+x2
    c2 = y1+y2
    endfunction
//multiplication
function [r,s] = voltdivider(x1,x2,y1,y2)
    r=x1*x2
    s=y1+y2
endfunction

//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction
//addition
function[c1,c2,c3]=addition(x1,x2,x3,y1,y2,y3)
    c1 = x1+x2+x3
    c2 = y1+y2+y3
endfunction

//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    if x==0 then
        th=-90
    else
        th=atand(y/x)
    end
endfunction

   
   function[q,x]=division(x1,x2,y1,y2)
       q=x1/x2
       x=y1-y2
   endfunction
   
//Variable Declaration
x1=6                       //real value of Zr
x2=50                       //real value of E
y1=0                        //angle in degree of Zr
y2=30                        //angle in degree of E
r2=9                       //real value of Zl
s2=90                        //angle in degree of Zl
r3=17                       //real value of Zc
s3=-90                        //angle in degree of Zc
//Calculation
[a,b]=voltdivider(x1,x2,y1,y2)   //function of multiplication
[c,d]=polar2rect(x1,y1)        //function of conversion
[e,f]=polar2rect(r2,s2)        //function of conversion
[ee,ff]=polar2rect(r3,s3)        //function of conversion
[i,j]=addition(c,e,ee,d,f,ff)     //function of addition
[o,p]=rect2polar(i,j)        //function of conversion
[m,n]=division(a,o,b,p)      //function of division
[aa,ba]=voltdivider(r2,x2,s2,y2)        //function of conversion
[ma,na]=division(aa,o,ba,p)      //function of division
[ab,bb]=voltdivider(r3,x2,s3,y2)        //function of conversion
[mb,nb]=division(ab,o,bb,p)      //function of division
[za,ya]=addition1(e,ee,f,ff)     //function of addition
[zb,yb]=rect2polar(za,ya)        //function of conversion
[zc,yc]=voltdivider(zb,x2,yb,y2)    //function of multiplication
[zd,yd]=division(zc,o,yc,p)       //function of division

//Results
printf("Vr = %d V < %.2f degree \n",m,n)
printf("Vl = %d V < %.2f degree \n",ma,na)
printf("Vc = %d V < %.2f degree \n",mb,nb)
printf("V1 = %d V < %.2f degree",zd,yd)
