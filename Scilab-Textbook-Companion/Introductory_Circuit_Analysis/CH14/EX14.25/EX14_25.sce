//Chapter 14, Example 14.25
clc
//division
function[c1,c2]=equ(x1,x2,y1,y2)
    c1 = (x1/x2)
    c2 = (y1-y2)
    endfunction
//Variable Declaration
x1 = 15                  //real value
x2 = 2                  //real value
y1 = 10                  //angle in degree
y2 = 7                  //angle in degree
x3 = 8                  //real value
x4 = 16                  //real value
y3 = 120                  //angle in degree
y4 = -50                  //angle in degree
//Calculation
[a,b]=equ(x1,x2,y1,y2)          //function of division
[c,d]=equ(x3,x4,y3,y4)          //function of division
//Results
printf("C1/C2 = %.1f < %d degree\n",a,b)
printf("C1/C2 = %.1f < %d degree\n",c,d)
