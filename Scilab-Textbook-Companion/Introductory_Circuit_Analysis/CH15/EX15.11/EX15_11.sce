//Chapter 15, Example 15.11
clc
funcprot(0)
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
    th=atand(y/x)
endfunction
//division
function[q,x]=division(x1,x2,y1,y2)
       q=x1/x2
       x=y1-y2
   endfunction
   
   //multiplication
function [r,s] = voltdivider(x1,x2,y1,y2)
    r=x1*x2
    s=y1+y2
endfunction
//Variable Declaration
r1=6                      //resistance in ohms
r2=4                      //resistance in ohms
l1 = 0.05                 //inductance in henry
l2 = 0.05                 //inductance in henry
c1 = 200*10^-6            //capacitance in farad
c2 = 200*10^-6            //capacitance in farad
w = 377                   //in rad/s
z = 20                    //source in volts
//Calculation
rt = r1+r2          //total resistance in ohms
yt = 0              //angle in degree
lt = l1+l2          //in henry
ct = c1/2           //in farad
xl = w*lt           //in ohms
xy = 90             //angle in degree
xc = 1/(w*ct)       //in ohms
cy = -90            //angle in degree
[a,b]=polar2rect(rt,yt)       //function of conversion
[c,d]=polar2rect(xl,xy)       //function of conversion
[e,f]=polar2rect(xc,cy)       //function of conversion
[i,j]=addition(a,c,e,b,d,f)   //function of addition
[m,n]=rect2polar(i,j)       //function of conversion
[o,p]=division(z,m,yt,n)    //function of division
[w,ww]=voltdivider(o,rt,p,yt)    //function of multiplication
[x,y]=voltdivider(o,xl,p,xy)     //function of multiplication
[v,k]=voltdivider(o,xc,p,cy)     //function of multiplication
fp1 = cosd(48.16)         //in degree
fp2 = (rt/m)              //lagging
pt= z*o*fp1                //power in watt
q=x-v                      //in volts
e= sqrt((w*w)+(q*q))       //in volts
eo = 0                     //in volts
[aa,bb]=voltdivider(rt,e,yt,eo)    //function of multiplication
[cc,dd]=division(aa,m,bb,n)       //function of division
[ee,ff]=voltdivider(xc,e,cy,eo)    //function of multiplication
[ii,jj]=division(ee,m,ff,n)      //function of division
//Results
printf("a. Zt = %d ohm < %.2f degree \n",m,n)
printf("   I = %.3f A < %.2f degree \n",o,p)
printf("   Vr = %.2f V < %.2f degree \n",w,ww)
printf("   Vl = %.2f V < %.2f degree \n",x,y)
printf("   Vc = %.2f V < %.2f degree \n",v,k)
printf("b. Fp = %.3f lagging \n",fp1)
printf("   Fp = %.3f lagging \n",fp2)
printf("c. Pt = %.2f W \n",pt)
printf("e. E = %d V \n",e)
printf("f. Vr = %.1f V < %.2f degree \n",cc,dd)
printf("   Vc = %.2f V < %.2f degree",ii,jj)
