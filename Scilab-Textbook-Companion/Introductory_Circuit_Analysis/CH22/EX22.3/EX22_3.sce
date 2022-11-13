//Chapter 22, Example 22.3
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
   //multiplication
function [r,s] = voltdivider(x1,x2,y1,y2)
    r=x1*x2
    s=y1+y2
endfunction
//Variable Declaration
teta2 = -120        //angle in degree
teta3 = 120        //angle in degree
vab = 120           //in volts
vabo = 0        //angle in degree
vbc = 120           //in volts
vbco = 120        //angle in degree
vca = 120           //in volts
vcao = -120        //angle in degree
zab1 = 5              //in volt
zab1o = 0             //angle in degree
zab2 = 5              //in volt
zab2o = -90           //angle in degree
zab = complex(5,-5)      //complex form Zab
zbc = 3.54             //in ohm
zbco = -45        //angle in degree
zca = 3.54             //in ohm
zcao = -45        //angle in degree
io = 34              //in ampere

//Calculation
[aa,bb]=voltdivider(zab1,zab2,zab1o,zab2o)      //function of multiplication
[a,b]=rect2polar(real(zab),imag(zab))          //function of conversion
[s,t]=division(aa,a,bb,b)             //function of division
[c,d]=division(vab,s,vabo,t)      //function of division
[e,f]=division(vbc,zbc,vbco,zbco)      //function of division
[g,h]=division(vca,zca,vcao,zcao)      //function of division
il = sqrt(3)*io                       //in ampere
//Results
printf("a. theta2 = %d degree and theta3 = +%d degree \n",teta2,teta3)
printf("b. Iab = %.1f A < %d degree \n",c,d)
printf("   Ibc = %.1f A < %d degree \n",e,f)
printf("   Ica = %.1f A < %d degree \n",g,h)
printf("c. IL = %.2f A \n",il)
