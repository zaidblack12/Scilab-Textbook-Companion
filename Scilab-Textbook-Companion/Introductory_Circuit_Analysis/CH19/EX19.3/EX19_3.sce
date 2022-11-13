//Chapter 19, Example 19.3, page 861
clc
funcprot()
function [r,th]=rect2pol(x,y)
//rectangle to polar coordinate conversion
  r=sqrt(x^2+y^2);
  th = atan(y,x)*180/%pi;
endfunction

//Initialisation
n=12                   //no of device
p1=60                   //power in watt
q1=0                    //in VAR
fp1=1                   //power factor
p2=6400                   //power in watt
q2=0                   //in VAR
fp2=1                   //power factor
n2=5                   //no of device
p0=746                   //power in watt
eta=0.82                     //eta contat
fp3=0.72                   //power factor
e=208                              //emf in volt
r=9                           //resistance in ohm
xc=12                         //capacitive reactance in ohm
z=complex(9,-12)

//Calculation
tp1=n*p1                   //power in watt
s1=tp1                       //in VA
s2=p2                       //in VA
p3=(p0*n2)/eta                   //power in watt
s3=p3/fp3                       //in VA
q3=s3*sin(asin(fp3))                   //in VAR
[zr,zang]=rect2pol(real(z),imag(z))   //function of conversion
i=e/zr                          //in ampere
iang=0-zang
p4=(i**2)*r                   //power in watt
q4=(i**2)*xc                   //in VAR
s4=sqrt((p4**2)+(q4**2))                       //in VA
fp4=p4/s4                   //power factor
pt=tp1+p2+p3+p4                 //total power in watt
qt=q1+q2+q3-q4                 //in  VAR(L)
st=sqrt((pt**2)+(qt**2))      //in VA
fpt=pt/st                   //power factor
tetat=acosd(fpt)            //angle in degree
it=st/e                     //in ampere

//Result
printf("(a) Bulb \n")
printf("     P1 = %d W \n",tp1)
printf("     Q1 = %d VAR \n",q1)
printf("     S1 = %d VA\n",s1)
printf("     Fp1 = %d \n",fp1)
printf("    Heating elements \n")
printf("     P2 = %.1f kW\n",p2/1000)
printf("     Q2 = %d VAR\n",q2)
printf("     S2 = %.1f KVA\n",s2/1000)
printf("     Fp2 = %d \n",fp2)
printf("    Motor \n")
printf("     P3 = %.2f W\n",p3)
printf("     Q3 = %.2f VAR\n",q3)
printf("     S3 = %.2f VA\n",s3)
printf("     Fp = %.2f lagging \n",fp3)
printf("    Capacitive load \n")
printf("     P4 = %.2f W\n",p4)
printf("     Q4 = %.2f VAR\n",q4)
printf("     S4 = %.2f VA\n",s4)
printf("     Fp = %.1f lagging \n",fp4)
printf("(b) \n")
printf("     Pt = %.2f W \n",pt)
printf("     Qt = %.2f VAR \n",qt)
printf("     St = %.2f VA\n",st)
printf("     Fp = %.3f lagging \n",fpt)
printf("(c) \n")
printf("     I = %.2f A < %.2f degree \n",it,-tetat)

