//Chapter 20, Example 20.7
clc
funcprot(0)
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
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
function[c1,c2]=subtraction(x1,x2,y1,y2)
    c1 = x1-x2
    c2 = y1-y2
    endfunction
//division
function[q,x]=division(x1,x2,y1,y2)
       q=x1/x2
       x=y1-y2
   endfunction
//Variable Declaration
l = 0.3*10^-3                 //inductance in mH
c = 100*10^-9                 //capacitance in nF
rl = 20                       //in ohm
xco = -90                     //angle in degree
i = 2*10^-3                   //current in mA

//Calculation
fs = 1/(2*%pi*sqrt(l*c))             //frequency in kHz
fm = fs*(sqrt(1-(1/4)*((rl*rl*c/l))))             //frequency in kHz
fp = fs*(sqrt(1-((rl*rl*c/l))))             //frequency in kHz
xl = 2*%pi*fm*l      //in ohm
xc = 1/(2*%pi*fm*c)            //in ohm
[a,b]=rect2polar(rl,xl)             //function of conversion
[c,d]=voltdivider(a,xc,b,xco)       //function of multiplication
[e,f]=subtraction(rl,0,xl,xc)     //function of subtraction
[ee,ff]=rect2polar(e,f)             //function of conversion
[m,n]=division(c,ee,d,ff)     //function of division
vc = i*m                     //in mV
qp = xl/rl                    //unit
bw = fp/qp                  //bandwidth in kHz
ql = (2*%pi*fs*l)/rl         //unit
ztp = ql*ql*rl               //in ohm
vc1 = i*ztp                   //in mV
bw1 = fp/qp                //bandwidth in kHz

//Results
printf("a. fs = %.2f kHz \n",fs/10^3)
printf("   fm = %.2f kHz \n",fm/10^3)
printf("   fp = %.2f kHz \n",fp/10^3)
printf("b. ZTm = %.2f ohm < %.2f degree \n",m,n)
printf("   VCmax = %.2f mV \n",vc*10^3)
printf("c. Qp = %.2f \n",qp)
printf("d. BW = %.2f kHz \n",bw/10^3)
printf("e. fs = %.2f kHz \n",fs/10^3)
printf("   Ql = %.2f \n",ql)
printf("   ZTp = %.2f ohm < 0 degree \n",ztp)
printf("   VCmax = %.1f mV \n",vc1*10^3)
printf("   BW = %.2f kHz \n",bw1/10^3)
