//Chapter 22, Example 22.6
clc
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    if x==0 then
        th=90
    else
        th=atand(y/x)
    end
endfunction 
//Variable Declaration
zd = complex(6,-8)                   //complex form of Zd
el = 200                               //in volt
io = 20                              //in ampere
ro = 6                             //in ohm
xo = 8                              //in ohm
vo = 200                      //in volt
zy = complex(4,3)               //complex form of Zy
ro1 = 4                               //in ohm
xo1 = 3                               //in ohm
vo1 = 116                            //in volt

//Calculation
[a,b]=rect2polar(real(zd),imag(zd))     //function of conversion
io = el/a                             //in ampere
pt = 3*io*io*ro                      //power in watt
qt = 3*io*io*xo                        //in VAR
st = 3*vo*io                          //in VA
[c,d]=rect2polar(real(zy),imag(zy))     //function of conversion
io1 = (el/sqrt(3))/(c)                 //in ampere
pty = 3*(io1*io1)*ro1                 //power in watt
qty = 3*(io1*io1)*xo1                  //in VAR
sty = 3*vo1*io1                       //in VA
ptt = pt+pty                         //power in watt
qtt = qt-qty                        //in VAR
stt = sqrt((ptt*ptt)+(qtt*qtt))       //in VA
fp = ptt/stt                          //leading
//Results
printf("For the delta: \n")
printf("Pt = %d W \n",pt)
printf("Qt = %d VAR (C) \n",qt)
printf("St = %d VA \n",st)
printf("For he Y: \n")
printf("Pty = %d W \n",pty)
printf("Qty = %d VAR (L) \n",qty)
printf("Sty = %.2f VA \n",sty)
printf("For the total load:\n")
printf("Pt = %d W \n",ptt)
printf("Qt = %.d VAR (C) \n",qtt)
printf("St = %.1f VA \n",stt)
printf("Fp = %.3f leading \n",fp)
