//Chapter 16, Example 16.1
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
//Variable Declaration
z1 = 1         //real value of impedance1
z1o = 0        //angle in degree
xc = 2         //real value of Xc
xco = -90        //angle in degree
xl = 3         //real value of Xl
xlo = 90        //angle in degree
ev = 120         //real value of E
eo = 0        //angle in degree


//Calculation
[a,b]=voltdivider(xc,xl,xco,xlo)  //function of multiplication
x= -xc+xl                        //real value
xo= 90                          //angle in degree
[c,d]=division(a,x,b,xo)    //function of division
[aa,bb]=polar2rect(z1,z1o)  //function of conversion
[cc,dd]=polar2rect(c,d)  //function of conversion
[e,f]=addition(aa,cc,bb,dd)   //function of addition
[ee,ff]=rect2polar(e,f)  //function of conversion
[m,n]=division(ev,ee,eo,ff)    //function of division
[v,w]=voltdivider(m,z1,n,z1o)  //function of multiplication
[vv,ww]=voltdivider(m,c,n,d)  //function of multiplication
[q,r]=division(vv,xc,ww,xco)    //function of division
pdel = (m*m)*z1              //power in watt
fp = cosd(n)                //lagging
//Results
printf("a. Zt = %.2f ohm < %.2f degree \n",ee,ff)
printf("b. Is = %.2f A < %.2f degree \n",m,n)
printf("c. Vr = %.2f V < %.2f degree \n",v,w)
printf("   Vc = %.2f V < %.2f degree \n",vv,ww)
printf("d. Ic = %.2f A < %.2f degree \n",q,r)
printf("e. Pdel = %.2f W \n",pdel)
printf("f. Fp = %.3f leading \n",fp)
