//Chapter 14, Example 14.19
clc
//addition
function[c1,c2]=addition(x1,x2,y1,y2)
    c1 = x1+x2
    c2 = y1+y2
endfunction

//Variable Declaration
x1=complex(2,4)                  //complex form c1
y1 = complex(3,1)                //complex form c2
x2 = complex(3,6)                //complex form c1
y2 = complex(-6,3)               //complex form c2

//Calculation
[a,b]=addition(real(x1),real(y1),imag(x1),imag(y1))        //function of conversion
[c,d]=addition(real(x2),real(y2),imag(x2),imag(y2))        //function of conversion

//Results
printf("a. C = %d + j%d \n", a,b)
printf("b. C = %d + j%d", c,d)
