//Chapter 17, Example 17.4
clc
   //multiplication
function [r,s] = voltdivider(x1,x2,y1,y2)
    r=x1*x2
    s=y1+y2
endfunction
//Variable Declaration
ia= 100              //real value of I
iao = 0              //angle in degree
z1 = 40*10^3      //real value of Z
z1o = 0              //angle in degree


//Calculation
[a,b]=voltdivider(ia,z1,iao,z1o)


//Results
printf("E = (%d x 10^6I)V < %d degree",a/10^6,b)
