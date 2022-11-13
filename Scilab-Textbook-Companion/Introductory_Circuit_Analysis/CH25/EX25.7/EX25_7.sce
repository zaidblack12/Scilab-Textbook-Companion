//Chapter 25, Example 25.7
clc
//Initialisation
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    th=atand(y/x)
endfunction

i1=0
R=3
vc=12
C=(1/8)
E=10/sqrt(2)

//Calculation
vr=i1*R
xc=1/(2*C)

z=complex(R,xc)
[r1,th1]=rect2polar(real(z),-imag(z))
i2=E/r1
vr2=i2*R
vc1=i2*xc
vca=-th1-90

irms = sqrt((i2**2))
vrms = sqrt((vr2**2))
vcrms = sqrt((vc**2)+(vc1**2))

P=(irms**2)*R
//Result
printf("(a) 1. VR = %d V \t\n \tI = %d \t\n\tVc = %d V\t\n",vr,i1,vc)
printf("    2. for AC supply \n") 
printf("      i = %.2f A < %.2f \n",i2,-th1) 
printf("      Vr = %.2f A < %.2f \n",vr2,-th1) 
printf("      Vc = %.2f A < %.2f \n",vc1,vca) 
printf("(b)  Irms = %.3f A \n\tVrms = %.3f V \n\tVcrms = %.3f V\t\n",irms,vrms,vcrms)
printf("(c)  P = %d W \n",P)
