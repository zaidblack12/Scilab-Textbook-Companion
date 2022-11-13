//Chapter 22, Example 22.8
clc
funcprot(0)
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    if x==0 then
        th=-90
    else
        th=atand(y/x)
      if (x<0) & (y<0) then
            th=th-180
        end
    end
endfunction
//Rectangle to Polar Conversion
function [r,th] = rect2polar1(x,y)
    r=sqrt((x**2)+(y**2))
    if x==0 then
        th=90
    else
        th=-atand(y/x)
    end
endfunction

//subtraction
function[c1,c2]=subtraction(x1,x2,y1,y2)
    c1 = x1-x2
    c2 = y1-y2
    endfunction
//division
function[q,x]=division(x1,x2,y1,y2)
       q=x1/x2
       x=y1-y2
   endfunction
   //Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction

//Variable Declaration
eab = 208                     //real value
eabo = 0                      //angle in degree
zab = 10                     //real value
zabo = 0                      //angle in degree
ebco = -120                      //angle in degree
ecao = 120                      //angle in degree
zbc = complex(15,20)            //complex form of Zbc
zca = complex(12,12)            //complex form of Zca

//Calculation
[a,b]=division(eab,zab,eabo,zabo)          //Iab function of division
[c,d]=rect2polar(real(zbc),imag(zbc))             //function of conversion
[e,f]=division(eab,c,ebco,d)                //Ibc function of division
[g,h]=rect2polar1(real(zca),imag(zca))             //function of conversion
[m,n]=division(eab,g,ecao,h)             //Ica function of division
[aa,bb]=polar2rect(a,b)             //function of conversion
[mm,nn]=polar2rect(m,n)             //function of conversion
[o,p]=subtraction(aa,mm,bb,nn)       //function of subtraction
[s,t]=rect2polar(o,p)               //Iaa function of conversion
[ee,ff]=polar2rect(e,f)             //function of conversion
[oo,pp]=subtraction(ee,aa,ff,bb)   //function of subtraction
[oa,pa]=rect2polar(oo,pp)             //function of conversion
[ob,pb]=subtraction(mm,ee,nn,ff)   //function of subtraction
[oc,pc]=rect2polar(ob,pb)             //function of conversion
od=(eab*s)*cosd(5.55)                         //in watt
pd = (eab*oc)*cosd(70.65)                    //in watt
pt = od+pd                               //in watt
ptt = (a*a*zab)+(e*e*real(zbc))+(m*m*real(zca))   //in watt
//Results
printf("a. Iab = %.1f A < %d degree \n",a,b)
printf("   Ibc = %.2f A < %.2f degree \n",e,f)
printf("   Ica = %.2f A < %d degree \n",m,n)
printf("b. IAa = %.2f A < %.2f degree \n",s,t)
printf("   IBb = %.2f A < %.2f degree \n",oa,pa)
printf("   ICc = %.1f A < %.2f degree \n",oc,pc)
printf("c. P1 = %.2f W \n",od)
printf("   P2 = %.1f W \n",pd)
printf("d. PT = %.2f W \n",pt)
printf("e. PT = %.2f W \n",ptt)
