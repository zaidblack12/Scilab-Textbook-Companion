//Chapter 14, Example 14.17
clc
//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    th= 180-(atand(y/x))
endfunction

//Variable Decleration
a = 6                      //real part
b = 3                      //imaginary

//Calculation
[r,th] = rect2polar(a,b)      //function of conversion

//Results
printf("C = %.2f < %.2f degree",r,th)
