//Chapter 22, Example 22.1
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
   //addition
function[c1,c2]=addition(x1,x2,x3,y1,y2,y3)
    c1 = x1+x2+x3
    c2 = y1+y2+y3
    endfunction
//Variable Declaration
teta2 = -120        //angle in degree
teta3 = 120        //angle in degree
eo = 120             //in volt
van = 120            //in volt
vano = 0        //angle in degree
vbn = 120            //in volt
vbno = -120        //angle in degree
vcn = 120            //in volt
vcno = 120        //angle in degree
zan = complex(3,4)       //complex form of Zan
zbn = 5              //in ohm
zbno = 53.13        //angle in degree
zcn = 5              //in ohm
zcno = 53.13        //angle in degree

//Calculation
el = sqrt(3)*eo                         //in volt
[a,b]=rect2polar(real(zan),imag(zan))    //function of conversion
[b,c]=division(van,a,vano,b)   //function of division
[e,f]=division(vbn,zbn,vbno,zbno)   //function of division
[g,h]=division(vcn,zcn,vcno,zcno)   //function of division
[bb,cc]=polar2rect(b,c)    //function of conversion
[ee,ff]=polar2rect(e,f)    //function of conversion
[gg,hh]=polar2rect(g,h)    //function of conversion
[m,n]=addition(bb,ee,gg,cc,ff,hh)     //function of addition
//Results
printf("a. theta2 = %d degree and theta3 = +%d degree \n",teta2,teta3)
printf("b. EL = %d V \n",el)
printf("c. Ian = %d A < %.2f degree \n",b,c)
printf("   Ibn = %d A < %.2f degree \n",e,f)
printf("   Icn = %d A < %.2f degree \n",g,h)
printf("d. IN = %d + j%d \n",m,n)
