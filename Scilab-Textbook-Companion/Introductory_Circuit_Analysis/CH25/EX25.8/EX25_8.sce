//Chapter 25, Example 25.8
clc
//Initialisation
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    th=atand(y/x)
endfunction

xl=0
R=6
e0=63.6
w=377
L=0.1
e1=70.71
e2=29.98
e2a=-90
w2=754

//Calculation
zt=R
i0=e0/R
vr0=i0*R
vl0=0
p0=(i0**2)*R

xl1=w*L
zt1=complex(R,xl1)
[zt1r,zt1a]=rect2polar(real(zt1),imag(zt1))
i1=e1/zt1r
vr1=i1*R
vl1=i1*xl1
vl1a=90-zt1a
p1=(i1**2)*R


xl2=w2*L
zt2=complex(R,xl2)
[zt2r,zt2a]=rect2polar(real(zt2),imag(zt2))
i2=e2/zt2r
i2a=e2a-zt2a
vr2=i2*R
vl2=i2*xl2
vl2a=90+i2a
p2=(i2**2)*R
Irms=sqrt((i0**2)+(i1**2)+(i2**2))
VRms=sqrt((e0**2)+(vr1**2)+(vr2**2))
Vlrms=sqrt((vl1**2)+(vl2**2))
//Result
printf("The Fourier series expansion for i is \n")
printf("i = %.1f + sqrt(2)(%.2f)sin(%d*t - %.2f) + sqrt(2)(%.3f)sin(%d*t - %.2f) \n",i0,i1,w,zt1a,i2,w2,-i2a)
printf("Irms = %.2f A \n\n",Irms)
printf("The Fourier series expansion for VR is \n")
printf("Vr = %.1f + sqrt(2)(%.2f)sin(%d*t - %.2f) + sqrt(2)(%.3f)sin(%d*t - %.2f) \n",e0,vr1,w,zt1a,vr2,w2,-i2a)
printf("Vrms = %.2f V \n\n",VRms)
printf("The Fourier series expansion for VL is \n")
printf("VL = sqrt(2)(%.2f)sin(%d*t - %.2f) + sqrt(2)(%.3f)sin(%d*t - %.2f) \n",vl1,w,vl1a,vl2,w2,-vl2a)
printf("Vlrms = %.2f V \n\n",Vlrms)
