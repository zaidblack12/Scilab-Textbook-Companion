//Chapter 14, Example 14.29
clc
function[t,p]=time2phasor(x,y)
    t=x*0.707
    p=y
endfunction

//Variable Declaration
x1 = 50                    //real value of time
y1 = 0                     //angle in degree
x2 = 69.6                  //peak voltage
y2 = 72                    //angle in degree
x3 = 45                    //peak voltage
y3 = 90                    //angle in degree
//Calculation
[a,b]=time2phasor(x2,y2)   //function of conversion
[c,d]=time2phasor(x3,y3)   //function of conversion
//Results
printf("a. %d < %d degree \n",x1,y1)
printf("b. %.2f < %d degree \n",a,b)
printf("c. %.2f < %d degree \n",c,d)
