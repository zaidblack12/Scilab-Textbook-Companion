//Chapter 17, Example 17.1
clc
//division
function[q,x]=division(x1,x2,y1,y2)
       q=x1/x2
       x=y1-y2
   endfunction
//Variable Declaration
ea = 100          //source voltage in volts
eo = 0            //angle in degree
za = 5            //real value of Z
zo = 53.13        //angle in degree
//Calculation
[a,b]=division(ea,za,eo,zo)   //function of division



//Results
printf("I = %d A < %.2f degree \n",a,b)
