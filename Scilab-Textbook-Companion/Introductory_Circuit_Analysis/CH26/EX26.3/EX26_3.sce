//Chapter 26, Example 26.3, page 1154
clc
//Initialisation
Vr=2*10**-3                        //in Volt
Rz=10                                 //in Ohms
Ei=50*10**-3                            //in Volt
phi1=150                             //in degree

//Calculation

i=Vr/Rz                      //in Ampere
zi=Ei/i                     //Zi in Ohms
phi2=180-phi1               //phase angle between Eg and Vrz
re=zi*cos(phi2*3.14/180)             //real number, R
im=zi*sin(phi2*3.14/180)             //Imaginary number, Xl

//Result
printf("Zi = %.2f ohm + j %.1f ohm ",re,im)
