//Chapter 17, Example 17.3
clc

//division
function[q,x]=division(x1,x2,y1,y2)
       q=x1/x2
       x=y1-y2
   endfunction
//Variable Declaration
ea = 20                   //source voltage in volts
eo = 0                    //angle in degree
z1 = 5*10^3               //real value of Z
z1o = 0                   //angle in degree


//Calculation
[a,b]=division(ea,z1,eo,z1o)   //function of division



//Results
printf("I =(%d X 10^-3 V)A < %d degree",a*10^3,b)
