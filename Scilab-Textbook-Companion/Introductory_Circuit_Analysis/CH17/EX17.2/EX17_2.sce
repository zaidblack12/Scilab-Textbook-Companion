//Chapter 17, Example 17.2
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

function[c1,c2]=addition(x1,x2,y1,y2)
    c1 = x1+x2
    c2 = y1+y2
endfunction

//division
function[q,x]=division(x1,x2,y1,y2)
       q=x1/x2
       x=y1-y2
   endfunction
//Variable Declaration
zc = 4               //real value of Zc
zco = -90              //angle in degree
zl = 6               //real value of Zl
zlo = 90              //angle in degree
ia = 10               //real value of I
iao = 60              //angle in degree

//Calculation
[aa,bb]=voltdivider(zc,zl,zco,zlo)  //function of multiplication
[a,b]=polar2rect(zc,zco)        //function of conversion
[c,d]=polar2rect(zl,zlo)        //function of conversion
[e,f]=addition(a,c,b,d)     //function of addition
[ee,ff]=rect2polar(e,f)        //function of conversion
[g,h]=division(aa,ee,bb,ff)    //function of division
[i,j]=voltdivider(ia,g,iao,h)  //function of multiplication

//Results
printf("Z = %d V < %d degree \n",g,h)
printf("E = %d V < %d degree \n",i,j)
