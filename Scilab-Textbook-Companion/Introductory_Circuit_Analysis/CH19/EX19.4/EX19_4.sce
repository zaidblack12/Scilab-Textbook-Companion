//Chapter 19, Example 19.4, page 864
clc
//Initialisation

//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction

ei=5000                   //in VAR
v=100                      //emf in volt
fp=0.6                  //power factor

//Calculation
i=ei/v                       //current in ampere
teta=-acosd(fp)              //phase angle in degree
zt=v/i                       //impedance of the circuit in ohm
[a,b]=polar2rect(zt,teta)    //function of conversion
//Result
printf("I = %d A < %.2f degree \n",i,teta)
printf("Zt =%.1f ohm + j %.1f ohm",a,-b)
