//Chapter 19, Example 19.2, page 861
clc
funcprot()
function [r,th]=rect2pol(x,y)
//rectangle to polar coordinate conversion
  r=sqrt(x^2+y^2);
  th = atan(y,x)*180/%pi;
endfunction

//Initialisation
E=100                 //emf in volt
r=6                   //resistance in ohm
xl=7                    //inductive reactance in ohm
xlang=90                   //angle in degree
xc=15                   //capacitive reactance in ohm
xcang=-90                    //angle in degree
f1=60                   //frequency in hertz


//Calculation
I=E/(r+complex(0,xl)+complex(0,-xc))            //current in ampere
[ir,iang]=rect2pol(real(I),imag(I))                   //conversion to polar form
vr=ir*r                                  //in volt
vl=ir*xl                                  //in volt
vlang=iang*xlang                                  //in degree
vc=ir*xc                                  //in volt
vcang=xcang*iang                                  //in degree
pt=E*ir*cosd(iang)                                  //power in watt
st=E*ir                                  //VAR
qt=E*ir*sind(iang)                                  //VA
fp=pt/st                                  //power factor
wr=(vr*ir)/f1                                  //energy in joule
wl=(vl*ir)*(2*3.14*f1)**-1                              //energy in joule
wc=(vc*ir)/(2*3.14*f1)                              //energy in joule

//Result
printf("(a) I = %d A < %.2f degree \n",ir,iang)
printf("    Pt = %d W \n",pt)
printf("    Qt = %d VAR \n",qt)
printf("    St = %d VA \n",st)
printf("    Fp = %.1f leading (C) \n",fp)
printf("(b) Wr = %d J \n",wr)
printf("(c) Wl = %.2f J \n",wl)
printf("(d) Wc = %.2f J \n",wc)
