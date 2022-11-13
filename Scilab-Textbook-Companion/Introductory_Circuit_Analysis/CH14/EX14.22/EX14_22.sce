//Chapter 14, Example 14.22
clc
function[c1,c2]=equ(x1,x2,y1,y2)
    c1 = (x1*x2)-(y1*y2)
    c2 = (y1*x2)+(x1*y2)
    endfunction
//Variable Declaration
x1 = complex(2,3)          //complex form of c1
y1 = complex(5,10)          //complex form of c2
x2 = complex(-2,-3)          //complex form of c1
y2 = complex(4,-6)          //complex form of c2
//Calculation
[a,b]=equ(real(x1),real(y1),imag(x1),imag(y1))
[c,d]=equ(real(x2),real(y2),imag(x2),imag(y2))

//Results
printf("a. C = %d + j%d \n", a,b)
printf("b. C = %d + j%d", c,d)
