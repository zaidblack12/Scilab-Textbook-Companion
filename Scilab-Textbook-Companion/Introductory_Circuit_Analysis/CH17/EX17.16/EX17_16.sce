//Chapter 17, Example 17.16
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
//Rectangle to Polar Conversion
function [r,th] = rect2polar1(x,y)
    r=sqrt((x**2)+(y**2))
    if x==0 then
        th=90
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
//addition
function[c1,c2]=addition(x1,x2,x3,y1,y2,y3)
    c1 = x1+x2+x3
    c2 = y1+y2+y3
    endfunction
//Variable Declaration
z1 = complex(1/4,0)
z2 = complex(0,1/5)
z3 = complex(0,1/-2)
i1 = 6
i1o = 0
i2 = 4
i2o = 0

//Calculation
[a,b]=addition1(real(z3),real(z2),imag(z3),imag(z2))                        //y3+y2
[aa,bb]=rect2polar(a,b)
[ac,bc]=voltdivider(-aa,i1,-bb,i1o)      //(y3+y2)/i1
[c,d]=rect2polar(real(z2),imag(z2))
[cc,dd]=voltdivider(i2,c,i2o,d)         //i2y2
[w,v]=polar2rect(ac,bc)
[ww,vv]=polar2rect(cc,dd)
[wa,va]=addition1(w,ww,v,vv)
[wb,vb]=rect2polar(wa,va)
[ca,da]=rect2polar(real(z1),imag(z1))
[cb,db]=rect2polar1(real(z3),imag(z3))
[e,f]=voltdivider(ca,cb,da,db)
[ee,ff]=polar2rect(e,f)
[g,h]=voltdivider(c,cb,d,db)
[gg,hh]=polar2rect(g,h)
[m,n]=voltdivider(ca,c,da,d)
[mm,nn]=polar2rect(m,n)
[o,p]=addition(ee,gg,mm,ff,hh,nn)
[oo,pp]=rect2polar(o,p)
[s,t]=division(wb,oo,vb,pp)
//Results
printf("V1 = %.2f V < %.2f degree ",s,t)
