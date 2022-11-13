//Chapter 21, Example 21.10
clc
funcprot(0)
function [r,th]=rect2pol(x,y)
//rectangle to polar coordinate conversion
  r=sqrt(x^2+y^2);
  th = atan(y,x)*180/%pi;
endfunction

//Initialisation
Rp=3              //in ohm
Xlp=2400              //in ohm
W=400                 //angular frequency in rad/s
M=0.9                 //in henry
Rs=0.5              //in ohm
Rl=40              //in ohm
Xls=400              //in ohm

//Calculation
Zp = complex(Rp,Xlp)                   //in ohm
Zi=Zp+(((W*M)**2)/(complex(Rs+Rl,Xls)))     //Input impedance in ohm
[Zir,Zid]=rect2pol(real(Zi),imag(Zi))

//Result
printf("Zi = %.1f ohm + j %d ohm\n",real(Zi),imag(Zi))
printf("   = %.2f ohm < %.2f degree",Zir,Zid)
