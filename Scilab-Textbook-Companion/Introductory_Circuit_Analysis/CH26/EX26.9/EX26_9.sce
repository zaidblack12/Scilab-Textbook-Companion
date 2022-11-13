//Chapter 26, Example 26.9, page 1171
clc
funcprot(0);
// A = p2z(R,Theta) - Convert from polar to rectangular form.
//    R is a matrix containing the magnitudes
//    Theta is a matrix containing the phase angles (in degrees).
function [A] = p2z(R,Theta)
 A = R*exp(%i*%pi*Theta/180);
endfunction

//Initialisation
Y1 = p2z(0.2,0)              //admitance
Y2 = p2z(0.02,-90)             //admitance
Y3 = p2z(0.25,90)             //admitance


//Calculation
y11 = Y1+Y2             //admitance
y12 = -Y2             //admitance
y22 = Y2+Y3             //admitance

//Result
printf("Y11 = %.1f mS - j %.2f mS \n",real(y11),-imag(y11))
printf("Y12 = j %.2f mS \n",imag(y12))
printf("Y22 = j %.2f mS \n",imag(y22))






