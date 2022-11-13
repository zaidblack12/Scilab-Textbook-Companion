//Chapter 14, Example 14.14
clc

//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction


[cr1,ci1]=polar2rect(5,30)
[cr2,ci2]=polar2rect(7,-120)
[cr3,ci3]=polar2rect(-4.2,60)

//Calculation
//Function to create plot on complex plane
function complexPlot(x,y,z)
    xpts = [0 x];
    ypts = [0 y];
    plot(xpts, ypts);
    xtitle(z);
    xlabel("Real");
    ylabel("Imaginary");
endfunction

//Plot
scf(1)
complexPlot(cr1,ci1,"5 < 30degree")
scf(2)
complexPlot(cr2,ci2,"7 < 120 degree")
scf(3)
complexPlot(cr3,ci3,"4.2 < 60 degree")
