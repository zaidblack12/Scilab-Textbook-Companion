//Chapter 15, Example 15.18
clc
funcprot(0)
//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction
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

function[c1,c2]=addition1(x1,x2,y1,y2)
    c1 = x1+x2
    c2 = y1+y2
    endfunction
//Variable Declaration
r1 = 10                   //resistance1 in ohms
r2 = 40                   //resistance2 in ohms
l1 = 6*10^-3              //inductance1 in millihenry
l2 = 12*10^-3              //inductance2 in millihenry
c1 = 80*10^-6              //capacitance1 in microfarad
c2 = 20*10^-6              //capacitance1 in microfarad
w = 1000                   //in rad/s
ia= 12                     //current source in ampere
iao = 0                    //angle in degree
//Calculation
rt = (r1*r2)/(r1+r2)       //total resistance in ohms
lt = (l1*l2)/(l1+l2)       //total inductance in millihenry
ct = c1+c2                 //total capacitance in microfarad
xl = w*lt                //reactance in ohms
xlo = 90                 //angle in degree
xc = 1/(w*ct)            //reactance in ohms
g = 1/rt                 //real value of Yr
go = 0                   //angle in degree
bl = 1/xl                //real value of Bl
blo = -90                 //angle in degree
bc = 1/xc                //real value of Bc
bco = 90                 //angle in degree
[a,b]=polar2rect(g,go)    //function of conversion
[c,d]=polar2rect(bl,blo)    //function of conversion
[e,f]=polar2rect(bc,bco)    //function of conversion
[i,j]=addition(a,c,e,b,d,f)  //function of addition
[m,n]=rect2polar(i,j)    //function of conversion
[mm,nn]=division(ia,m,iao,n)  //function of division
[o,p]=division(mm,xl,nn,xlo)  //function of division
fp = (g/m)                    //lagging
po = mm*ia*cosd(nn)           //power in watt
zt1 = 1/m                     //real vlue in ohms of Zt
zt2 = -n                      //angle in degree
[vv,ww]=polar2rect(zt1,zt2)    //function of conversion
l=vv/w                         //inductance in millihenry
[ss,tt]=voltdivider(ia,zt1,iao,zt2)    //function of multiplication
ppo= (ia*ia)*vv               //power in watt
rp = ((vv*vv)+(ww*ww))/vv     //resistance in ohms
xp = ((vv*vv)+(ww*ww))/ww     //resistance in ohms
g1=1/rp                      //real value in ohms of Yt
g1o=0                        //angle in degree
bl1=1/xp                     //real value
bl1o=-90                        //angle in degree
[za,zb]=polar2rect(g1,go)    //function of conversion
[zc,zd]=polar2rect(bl1,bl1o)    //function of conversion
[ze,zf]=addition1(za,zc,zb,zd)  //function of addition
[zx,zy]=rect2polar(ze,zf)    //function of conversion
//Results
printf("Yt = %.3f S < %.3f degree \n",m,n)
printf("E  = %.3f V < %.3f degree \n",mm,nn)
printf("IL = %.3f A < %.3f degree \n",o,p)
printf("Fp = %.3f lagging \n",fp)
printf("P = %.2f W \n",po)
printf("Zt = %.3f ohm + j%.3f ohm \n",vv,ww)
printf("L = %.3f mH \n",l*10^3)
printf("E = %.3f V < %.3f degree \n",ss,tt)
printf("P = %.2f W \n",ppo)
printf("Rp = %d ohm \n",rp)
printf("Xp = %.3f ohm \n",xp)
printf("Yt = %.3f S < %.3f degree \n",zx,zy)
