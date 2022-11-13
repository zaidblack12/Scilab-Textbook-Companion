//Chapter 14, Example 14.30
clc
function[m,n]=phasor2time(x,y)
    m=sqrt(2)*x
    n=y
endfunction

//Variable Declaration
x1= 10                  //real value
y1 = 30                 //angle in degree
x2 = 115                //real value
y2 = -70                //angle in degree

//Calculation
[a,b]=phasor2time(x1,y1)    //function of conversion
[c,d]=phasor2time(x2,y2)    //function of conversion

//Results
printf("a. I = %.2f sin(377t + %d degree)\n",a,b)
printf("b. V = %.1f sin(377t %d degree)\n",c,d)
