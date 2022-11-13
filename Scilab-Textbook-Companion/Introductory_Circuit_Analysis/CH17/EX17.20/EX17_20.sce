//Chapter 17, Example 17.20
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
//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction
//addition
function[c1,c2]=addition1(x1,x2,y1,y2)
    c1 = x1+x2
    c2 = y1+y2
    endfunction
function[c1,c2]=addition(x1,x2,x3,y1,y2,y3)
    c1 = x1+x2+x3
    c2 = y1+y2+y3
    endfunction
//Variable Declaration
za=complex(0,-4)            //complex form of Za
zb=complex(0,-4)            //complex form of Zb
zc=complex(3,4)            //complex form of Zc
z4 = complex(2,0)            //complex form of Z4
z5 = complex(3,0)            //complex form of Z5

//Calculation
[a,b]=rect2polar(real(zb),imag(zb))    //function of conversion
[c,d]=rect2polar(real(zc),imag(zc))    //function of conversion
[e,f]=voltdivider(a,c,b,d)        //function of multiplication
[g,h]=addition(real(za),real(zb),real(zc),imag(za),imag(zb),imag(zc))    //function of addition
[i,j]=rect2polar(g,h)    //function of conversion
[m,n]=division(e,i,f,j)        //function of division
[o,p]=polar2rect(m,n)           //Z1 function of conversion
[aa,bb]=rect2polar(real(za),imag(za))    //function of conversion
[ee,ff]=voltdivider(aa,c,bb,d)        //function of multiplication
[mm,nn]=division(ee,i,ff,j)        //function of division
[oo,pp]=polar2rect(mm,nn)      //Z2 function of conversion
[ac,bc]=voltdivider(aa,a,bb,b)        //function of multiplication
[ad,bd]=division(ac,i,bc,j)        //function of division
[ae,be]=polar2rect(ad,bd)      //Z3 function of conversion
[ma,na]=addition1(o,real(z4),p,imag(z4))    //function of addition
[mb,nb]=rect2polar(ma,na)               //ZT1 function of conversion
[s,t]=addition1(oo,real(z5),pp,imag(z5))    //function of addition
[sa,ta]=rect2polar(s,t)                  //ZT2 function of conversion
[sb,tb]=voltdivider(mb,sa,nb,ta)        //function of multiplication
[sc,tc]=addition1(ma,s,na,t)    //function of addition
[se,te]=rect2polar(sc,tc)               //function of conversion
[sd,td]=division(sb,se,tb,te)        //function of division
[sf,tf]=polar2rect(sd,td)            //ZT3 function of conversion
[si,ti]=addition1(ae,sf,be,tf)    //function of addition
[sv,tv]=rect2polar(si,ti)               //function of conversion


//Results
printf("ZT = %.2f ohm < %.2f degree \n",sv,tv)
