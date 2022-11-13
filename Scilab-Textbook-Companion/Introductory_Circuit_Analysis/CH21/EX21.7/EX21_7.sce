//Chapter 21, Example 21.7
clc
funcprot()
function [r,th]=rect2pol(x,y)
//rectangle to polar coordinate conversion
  r=sqrt(x^2+y^2);
  th = atan(y,x)*180/%pi;
endfunction

//Initialisation
rp=1         //in ohm
a=2           //turn ratio
rs=1         //in ohm
xp=2         //in ohm
xs=2         //in ohm
ip=10         //in ampere
rl=60         //in ohm
vl=1200         //in volt

//Calculation
Re=rp+((a**2)*rs)        //in ohm
Xe=xp+((a**2)*xs)        //in ohm
c=Re+((a**2)*rl)
vg=ip*complex(c,Xe)       //in volt
[vgr,vgi]=rect2pol(real(vg),imag(vg))       //rectangle to polar conversion
vg2=a*vl      //in volt

//Result
printf("(a) Re = %d ohm \n",Re)
printf("    Xe = %d ohm \n",Xe)
printf("(b) Vg = %.2f V < %.2f degree \n",vgr,vgi)
printf("(c) Vg = %.2f V \n",vg2)

