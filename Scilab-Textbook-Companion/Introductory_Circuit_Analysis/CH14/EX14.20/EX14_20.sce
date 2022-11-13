//Chapter 14, Example 14.20
clc
//subtraction
function[c1,c2]=subtraction(x1,x2,y1,y2)
    c1 = x1-x2
    c2 = y1-y2
    endfunction
//Variable Declaration
x1 = complex(1,4)              //complex form c2
y1 = complex(4,6)              //complex form c1
x2 = complex(-2,5)              //complex form c2
y2 = complex(3,3)              //complex form c1
//Calculation
[a,b]=subtraction(real(y1),real(x1),imag(y1),imag(x1))        //function of conversion
[c,d]=subtraction(real(y2),real(x2),imag(y2),imag(x2))        //function of conversion


//Results
printf("a. C = %d + j%d \n", a,b)
printf("b. C = %d %dj", c,d)
