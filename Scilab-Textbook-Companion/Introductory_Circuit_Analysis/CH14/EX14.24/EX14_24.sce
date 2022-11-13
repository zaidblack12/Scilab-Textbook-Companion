//Chapter 14, Example 14.24
clc
//muliplication
function[C1,C2]=equ2(x1,x2,y1,y2)
    C1 = ((x1*x2)+(y1*y2))/((y1*y1)+(y2*y2))
    C2 = ((x2*y1)-(x1*y2))/((y1*y1)+(y2*y2))
    endfunction

//Variable Declaration
x1 = complex(1,4)          //complex form of c1
y1 = complex(4,5)          //complex form of c2
x2 = complex(-4,-8)          //complex form of c1
y2 = complex(6,-1)          //complex form of c2
//Calculation
[a,b]=equ2(real(x1),real(y1),imag(x1),imag(y1))   //function
[c,d]=equ2(real(x2),real(y2),imag(x2),imag(y2))   //function
//Results
printf("C1/C2 = %.3f + j%.3f \n",a,b)
printf("C1/C2 = %.3f + j%.3f \n",c,d)

