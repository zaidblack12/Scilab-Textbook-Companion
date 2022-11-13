//Chapter 15, Example 15.14
clc
//real and imaginary part
function[r,i]=realnimaginary(x,y)
    r= x/((x*x)+(y*y))
    i= y/((x*x)+(y*y))
endfunction

    
//Variable Declaration
r = 6              //real part of Z
xc = 8             //imaginary part of Z
r1 = 10            //real part of Z
xl = 4             //imaginary part of Z
xc1 = -0.1         //imaginary part of Z

//Calculation
[a,b]=realnimaginary(r,xc)       //function
xo = xl+xc1                    //imaginary part of Z
[c,d]=realnimaginary(r1,xo)     //function
//Results
printf("a. Y = %.2f S + j%.2f S \n",a,b)
printf("b. Y = %.3f S - j%.3f S ",c,d)
