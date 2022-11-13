//Chapter 18, Example 18.4
clc
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

function[c1,c2]=addition(x1,x2,y1,y2)
    c1 = x1+x2
    c2 = y1+y2
    endfunction
//Variable Declaration
r1 = 0.5*10^3            //resistance1 in kiloohms
r1o = 0                  //angle in degree
r2 = 1*10^3              //resistance2 in kiloohms
r2o = 0                  //angle in degree
r3 = 3*10^3               //resistance3 in kiloohms
r3o = 0                  //angle in degree
e1 = 12                  //source voltage in volts 
xc = 10*10^3             //reactance in kiloohms
xco = -90                  //angle in degree
xl = 2*10^3             //reactance in kiloohms
xlo = 90                  //angle in degree
e2 = 4                   //source voltage in volts
e2o = 0                  //angle in degree
//Calculation
rp1 = (r1*r3)/(r1+r3)            //in kiloohms
v3 = (rp1*e1)/(rp1+r2)                 //V3(dc) in volts
[a,b]=voltdivider(r2,xc,r2o,xco)  //function of multiplication
[c,d]=polar2rect(r2,r2o)    //function of conversion
[e,f]=polar2rect(xc,xco)    //function of conversion
[g,h]=addition(c,e,d,f)     //function of addition
[i,j]=rect2polar(g,h)    //function of conversion
[m,n]=division(a,i,b,j)              //z2 function of division
[o,p]=polar2rect(r3,r3o)    //function of conversion
[q,r]=polar2rect(xl,xlo)    //function of conversion
[s,t]=addition(o,q,p,r)     //function of addition
[v,w]=rect2polar(s,t)                //z3 function of conversion
[ma,na]=voltdivider(m,v,n,w)  //function of multiplication
[mb,nb]=polar2rect(m,n)    //function of conversion
[mc,nc]=addition(mb,s,nb,t)     //function of addition
[md,nd]=rect2polar(mc,nc)            //Z2 + Z31 function of conversion
[oo,pp]=division(ma,md,na,nd)     //function of division
[qa,ra]=polar2rect(r1,r1o)    //function of conversion
[qb,rb]=polar2rect(oo,pp)    //function of conversion
[qc,rc]=addition(qa,qb,ra,rb)     //function of addition
[qd,rd]=rect2polar(qc,rc)              //Zt function of conversion
[va,wa]=division(e2,qd,e2o,rd)        //Is function of division
[sa,ta]=voltdivider(m,va,n,wa)        //Z2*Is function of multiplication
[sb,tb]=division(sa,md,ta,nd)         //I3 function of division
[oa,pa]=voltdivider(sb,r3,tb,r3o)     //V3(ac) function of multiplication
pb=oa*sqrt(2)        //power in watt
//Results
printf("V3 = %.1f V \n",v3)
printf("V3 = %.1f + %.2f sin(wt %.2f degree)\n",v3,pb,pa)
