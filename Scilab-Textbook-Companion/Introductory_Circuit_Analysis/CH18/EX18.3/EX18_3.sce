//Chapter 18, Example 18.3
clc
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    th=atand(y/x)
endfunction


//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction

function[c1,c2]=addition(x1,x2,y1,y2)
    c1 = x1+x2
    c2 = y1+y2
    endfunction
//Variable Declaration
i1= 1.9                  //real value of current in ampere
i1o = 108.43             //angle in degree
r1  = 6                  //resistance in ohms
i2 = 3.16                //real value of current in ampere
i2o = 48.43             //angle in degree
it = i1+i2                //real value of current in ampere
ito = i1o-i2o             //angle in degree
ia = 4.42                 //total current in ampere
iao = 70.2                //angle in degree
//Calculation
v1 = i1*r1              //in volts
v2 = i2*r1              //in volts
[a,b]=polar2rect(v1,i1o)    //function of conversion
[c,d]=polar2rect(v2,i2o)    //function of conversion
[e,f]=addition(a,c,b,d)     //function of addition
[i,j]=rect2polar(e,f)    //function of conversion
vt = ia*r1               //in volts

//Results
printf("V6ohm = %.1f V < %.1f degree \n",i,j)
printf("V6ohm = %.1f V < %.1f degree (checks)\n",vt,iao)
