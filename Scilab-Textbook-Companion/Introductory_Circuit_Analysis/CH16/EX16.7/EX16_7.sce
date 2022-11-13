//Chapter 16, Example 16.7
clc
//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    th=atand(y/x)
endfunction
function[c1,c2]=addition(x1,x2,x3,y1,y2,y3)
    c1 = x1+x2+x3
    c2 = y1+y2+y3
endfunction
   //multiplication
function [r,s] = voltdivider(x1,x2,y1,y2)
    r=x1*x2
    s=y1+y2
endfunction

//division
function[q,x]=division(x1,x2,y1,y2)
       q=x1/x2
       x=y1-y2
   endfunction


//Variable Declaration
z1 = 10                //real value of Z1
z1o = 0                //angle in degree
z2 = complex(3,4)      //complex form of Z2
z3 = complex(8,-6)     //complex form of Z3
ea = 200               //source voltage in volts
eo = 0                 //angle in degree
//Calculation
[a,b]=rect2polar(real(z2),imag(z2))   //function of conversion
[c,d]=rect2polar(real(z3),imag(z3))   //function of conversion
y1=1/z1                   //admittance1
y1o = 0                   //angle in degree
y2 = 1/a                   //admittance2
ya2 = -b                   //angle in degree
y3 = 1/c                   //admittance3
ya3 = -d                   //angle in degree
[e,f]=polar2rect(y2,ya2)   //function of conversion
[g,h]=polar2rect(y3,ya3)   //function of conversion
[m,n]=addition(y1,e,g,y1o,f,h)  //function of addition
[o,p]=rect2polar(m,n)   //function of conversion
[s,t]=voltdivider(ea,o,eo,p)     //function of multiplication
[sa,ta]=division(ea,z1,eo,z1o)   //function of division
[sb,tb]=division(ea,a,eo,b)   //function of division
[sc,tc]=division(ea,c,eo,d)   //function of division
zt1 = 1/o                //real value of Zt
zt2 = -p                  //angle in degree
[v,w]=polar2rect(s,t)  //function of conversion
[va,wa]=polar2rect(sa,ta)  //function of conversion
[vb,wb]=polar2rect(sb,tb)  //function of conversion
[vc,wc]=polar2rect(sc,tc)  //function of conversion
[vv,ww]=addition(va,vb,vc,wa,wb,wc)  //function of addition
//Results
printf("a. I = %.1f A < %.3f degree \n",s,t)
printf("b. I1 = %d A < %d degree \n",sa,ta)
printf("   I2 = %d A < %.2f degree \n",sb,tb)
printf("   I3 = %d A < %.2f degree \n",sc,tc)
printf("c. %d %dj = %d %dj (checks)\n",v,w,vv,ww)
printf("d. Zt = %.3f ohm < %.3f degree \n",zt1,zt2)
