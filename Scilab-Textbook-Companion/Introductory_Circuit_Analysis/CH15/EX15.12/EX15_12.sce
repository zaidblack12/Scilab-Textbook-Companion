//Chapter 15, Example 15.12
clc
funcprot(0)
//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction
//adition
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
   
      //multiplication
function [r,s] = voltdivider(x1,x2,y1,y2)
    r=x1*x2
    s=y1+y2
endfunction

//Function to create plot on complex plane
function complexPlot(x1,y1,x2,y2,x3,y3,z)
    xpts1 = [0 x1];
    ypts1 = [0 y1];
    
    xpts2 = [0 x2];
    ypts2 = [0 y2];
    
    xpts3 = [0 x3];
    ypts3 = [0 y3];
    scf(1);
    clf(1);
    set(gca(),"auto_clear","off")
    plot(xpts1,ypts1,'ro-')
    plot(xpts2,ypts2,'ro-')
    plot(xpts3,ypts3,'ro-')
    set(gca(),"auto_clear","on")
    a = gca();
    a.x_location="origin";
    a.y_location="origin";
    set(gca(),"data_bounds",matrix([-0.1,0.1,-0.2,0.2],2,-1))
    xtitle(z);
    xlabel("Real");
    ylabel("Imaginary");
endfunction

//Variable Declaration
g = 0.05                  //in admittance
d = 0                      //in degrees
bl = 0.1                  //in admittance
dl = -90                      //in degrees
zr= 20                        //in impedance
zro = 0                        //in angle
zl = 10                        //in impedance
zlo = 90                        //in degrees

//Calculation
[a,b]=polar2rect(g,d)
[c,d]=polar2rect(bl,dl)
[e,f]=addition(a,c,b,d)
[i,j]=rect2polar(e,f)
m= (1/i)
n= (-j)
[o,p]=voltdivider(zr,zl,zro,zlo)
[q,r]=polar2rect(zr,zro)
[s,t]=polar2rect(zl,zlo)
[oo,pp]=addition(q,s,r,t)
[qq,rr]=rect2polar(oo,pp)
[ss,tt]=division(o,qq,p,rr)

//Plot
complexPlot(a,b,c,d,e,f,"Admittance Diagram")

//Results
printf("Yr = %.2f S + j%d \n",a,b)
printf("Yl = %d %.1fj s \n",c,d)
printf("Yt = %.2f S %.1fj S \n",e,f)
printf("Zt = %.2f ohm < %.2f degree \n",m,n)
printf("Zt = %.2f ohm < %.2f degree \n",ss,tt)
