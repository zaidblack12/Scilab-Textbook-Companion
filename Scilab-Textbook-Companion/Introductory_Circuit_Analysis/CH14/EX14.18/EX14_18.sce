//Chapter 14, Example 14.18
clc

//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction

//Variable Declaration
a = 10                       //real value
b = 230                      //angle in degree
//Calculation
[r,i]=polar2rect(a,b)      //function of conversion

//Results
printf("C = %.3f  j%.3f",r,i)
