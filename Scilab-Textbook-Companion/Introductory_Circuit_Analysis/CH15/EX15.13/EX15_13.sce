//Chapter 15, Example 15.13
clc
funcprot(0)
//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction
//adition
function[c1,c2]=addition(x1,x2,x3,y1,y2,y3)
    c1 = x1+x2+x3
    c2 = y1+y2+y3
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
   
      //multiplication
function [r,s] = voltdivider(x1,x2,x3,y1,y2,y3)
    r=x1*x2*x3
    s=y1+y2+y3
endfunction

  //multiplication
function [r,s] = voltdivider1(x1,x2,y1,y2)
    r=x1*x2
    s=y1+y2
endfunction


//Function to create plot on complex plane
function complexPlot(x1,y1,x2,y2,x3,y3,x4,y4,z)
    xpts1 = [0 x1];
    ypts1 = [0 y1];
    
    xpts2 = [0 x2];
    ypts2 = [0 y2];
    
    xpts3 = [0 x3];
    ypts3 = [0 y3];
    
    xpts4 = [0 x4];
    ypts4 = [0 y4];
    scf(1);
    clf(1);
    set(gca(),"auto_clear","off")
    plot(xpts1,ypts1,'ro-')
    plot(xpts2,ypts2,'ro-')
    plot(xpts3,ypts3,'ro-')
    plot(xpts4,ypts4,'ro-')
    set(gca(),"auto_clear","on")
    a = gca();
    a.x_location="origin";
    a.y_location="origin";
    set(gca(),"data_bounds",matrix([-0.1,0.25,-0.2,0.2],2,-1))
    xtitle(z);
    xlabel("Real");
    ylabel("Imaginary");
endfunction

//Variable Declaration
r = 5
g = 1/r
xl = 8
d = 0
bl = 1/xl
dl = -90
xc = 20
bc = 1/xc
dc = 90
zr= 5
zro = 0
zl = 8
zlo = 90
zc = 20
zco = -90
//Calculation
[a,b]=polar2rect(g,d)
[c,d]=polar2rect(bl,dl)
[cc,dd]=polar2rect(bc,dc)
[e,f]=addition(a,c,cc,b,d,dd)
[i,j]=rect2polar(e,f)
m= (1/i)
n= (-j)
[o,p]=voltdivider(zr,zl,zc,zro,zlo,zco)
[mm,nn]=voltdivider1(zr,zl,zro,zlo)
[ma,na]=voltdivider1(zl,zc,zlo,zco)
[mb,nb]=voltdivider1(zr,zc,zro,zco)
[q,r]=polar2rect(mm,nn)
[s,t]=polar2rect(ma,na)
[sa,ta]=polar2rect(mb,nb)
[oo,pp]=addition(q,s,sa,r,t,ta)
[qq,rr]=rect2polar(oo,pp)
[ss,tt]=division(o,qq,p,rr)

//Plot
complexPlot(a,b,c,d,cc,dd,e,f,"Admittance Diagram")


//Results
printf("a. Yr = %.1f S + j%d \n",a,b)
printf("   Yl = %d %.3fj s \n",c,d)
printf("   Yc = %d + j%.3f S \n",cc,dd)
printf("b. Yt = %.2f S < %.3f degree \n",i,j)
printf("c. Zt = %.2f ohm < %.2f degree \n",m,n)
printf("   Zt = %.2f ohm < %.2f degree \n",ss,tt)
