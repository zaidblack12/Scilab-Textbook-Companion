//Chapter 14, Example 14.13
clc
//Variable Declaration
c1=complex(3,4)
c2=complex(0,-6)
c3=complex(-10,-20)

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
complexPlot(real(c1),imag(c1),"3 + j4")
scf(2)
complexPlot(real(c2),imag(c2),"0 - j6")
scf(3)
complexPlot(real(c3),imag(c3),"-10 - j20")

