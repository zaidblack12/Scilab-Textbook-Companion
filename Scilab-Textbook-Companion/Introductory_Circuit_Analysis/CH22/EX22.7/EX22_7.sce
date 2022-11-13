//Chapter 22, Example 22.7
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
//addition
function[c1,c2]=addition(x1,x2,y1,y2)
    c1 = x1+x2
    c2 = y1+y2
    endfunction
   //multiplication
function [r,s] = voltdivider(x1,x2,y1,y2)
    r=x1*x2
    s=y1+y2
endfunction

//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction

//Variable Declaration
vl = 12000                       //in volt
pt = 160000                        //power in watt
vo = 6936.42                       //in volt
voo = 0                           //angle in degree
co = 0.86                              //cos
ioo= -30.68                           //angle in degree
zl = 25                          //in ohm
zlo = 53.13                           //angle in degree
rl = 15                            //in ohm
//Calculation
vo = vl/sqrt(3)                  //in volt
io = pt/(3*vo*co)                 //in ampere
[a,b]=voltdivider(io,zl,ioo,zlo)     //function of multiplication
[c,d]=polar2rect(a,b)              //function of conversion
[e,f]=polar2rect(vo,voo)              //function of conversion
[g,h]=addition(c,e,d,f)                //function of addition 
[gg,hh]=rect2polar(g,h)              //function of conversion
eab = sqrt(3)*gg                     //in volt
pline = 3*io*io*rl                    //power line in watt
ptt= pt+pline                        //total power
co1= pt/(sqrt(3)*eab*io)             //cos
n = (pt/ptt)*100                   //efficiency in percentage
//Results
printf("a. Io = %.2f A \n",io)
printf("   Eab = %.2f V \n",eab)
printf("b. Fp = %.2f < 0.86 of load \n",co1)
printf("c. n = %.1f percent \n",n)
