//Chapter 15, Example 15.9
clc
funcprot(0)

function [r,s] = voltdivider(x1,x2,y1,y2)
    r=x1*x2
    s=y1-y2
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

//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    th=atand(y/x)
endfunction
   //division
   function[q,x]=division(x1,x2,y1,y2)
       q=x1/x2
       x=y1-y2
   endfunction
   
//Variable Declaration
x1=4                        //real value
x2=100                      //real value
y1=-90                      //angle in degree
y2=0                        //angle in degree
r=3                         //real value
x3=3                        //real value
x4=100                      //real value
y3=0                        //angle in degree
y4=0                        //angle in degree
//Calculation
[a,b]=voltdivider(x1,x2,y1,y2)   //function of multipliation
[c,d]=polar2rect(x1,y1)      //function of conversion
[e,f]=polar2rect(r,y2)      //function of conversion
[i,j]=addition(e,f,c,d)     //function of addition
[o,p]=rect2polar(i,j)      //function of conversion
[m,n]=division(a,o,b,p)    //function of division
[aa,ba]=voltdivider(x3,x4,y3,y4)  //function of multipliation
[ma,na]=division(aa,o,ba,p)    //function of division

//Results
printf("Vc = %d V < %.2f degree \n",m,n)
printf("Vr = %d V < %.2f degree",ma,na)
