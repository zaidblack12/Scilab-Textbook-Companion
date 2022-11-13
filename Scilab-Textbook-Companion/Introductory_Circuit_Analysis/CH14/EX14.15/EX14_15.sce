//Chapter 14, Example 14.15
clc
funcprot(0)

//Rectangle to Polar Conversion
function [r,th] = rect2polar(x,y)
    r=sqrt((x**2)+(y**2))
    th=atand(y/x)
endfunction


//Variable Declaration
x = 3                        //real part
y = 4                        //imaginary part

//Calculation
[a,b]=rect2polar(x,y)       //function of conversion

//Results
printf("C = %d < %.2f degree", a,b)
