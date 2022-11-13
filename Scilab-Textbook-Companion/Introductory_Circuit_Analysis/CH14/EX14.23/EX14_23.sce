//Chapter 14, Example 14.23
clc
//multiplication
function[c1,c2]=equ(x1,x2,y1,y2)
    c1 = (x1*x2)
    c2 = (y1+y2)
    endfunction
//Variable Declaration
x1 = 5                  //real value
x2 = 10                  //real value
y1 = 20                   //angle in degree
y2 = 30                   //angle in degree
x3 = 2                  //real value
x4 = 7                  //real value
y3 = -40                   //angle in degree
y4 = 120                   //angle in degree

//Calculation
[a,b]=equ(x1,x2,y1,y2)         //function of multiplication
[c,d]=equ(x3,x4,y3,y4)         //function of multiplication
//Results
printf("a. C = %d < %d degree \n", a,b)
printf("b. C = %d < %d degree", c,d)
