//Chapter 26, Example 26.7, page 1166
clc
funcprot(0);
// A = p2z(R,Theta) - Convert from polar to rectangular form.
//    R is a matrix containing the magnitudes
//    Theta is a matrix containing the phase angles (in degrees).
function [A] = p2z(R,Theta)
 A = R*exp(%i*%pi*Theta/180);
endfunction

//Initialisation
z1 = p2z(3,0)
z2 = p2z(5,90)
z3 = p2z(4,-90)


//Calculation
z11 = z1+z3
z12 = z3
z22 = z2+z3

//Result
printf("Z11 = %d ohm - j %d ohm \n",real(z11),-imag(z11))
printf("Z12 = - j %d ohm \n",-imag(z12))
printf("Z22 = j %d ohm \n",imag(z22))






