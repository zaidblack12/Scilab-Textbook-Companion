//Chapter 14, Example 14.16
clc

//Polar to Rectangle conversion
function [r,i]= polar2rect(x,y)
    r=x*cosd(y)
    i=x*sind(y)
endfunction


//Variable Declaration
a=10                      //radius
b=45                      //angular in degree

//Calculation
[r,i]=polar2rect(a,b)      //function of conversion

//Results
printf("C = %.2f + j %.2f",r,i)
