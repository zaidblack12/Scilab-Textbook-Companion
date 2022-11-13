//Chapter 22, Example 22.2
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
vab = 150           //in volts
vabo = 0        //angle in degree
vbc = 150           //in volts
vbco = -120        //angle in degree
vca = 150           //in volts
vcao = 120        //angle in degree
zab = complex(6,8)         //complex form of Zab
zbc = 10             //in ohm
zbco = 53.13        //angle in degree
zca = 10             //in ohm
zcao = 53.13        //angle in degree
io = 15              //in ampere

//Calculation
[a,b]=rect2polar(real(zab),imag(zab))          //function of conversion
[c,d]=division(vab,a,vabo,b)      //function of division
[e,f]=division(vbc,zbc,vbco,zbco)      //function of division
[g,h]=division(vca,zca,vcao,zcao)      //function of division
il = sqrt(3)*io                       //in ampere
//Results
printf("a. theta2 = %d degree and theta3 = +%d degree \n",teta2,teta3)
printf("b. Iab = %d A < %.2f degree \n",b,c)
printf("   Ibc = %d A < %.2f degree \n",e,f)
printf("   Ica = %d A < %.2f degree \n",g,h)
printf("c. IL = %.2f A \n",il)
