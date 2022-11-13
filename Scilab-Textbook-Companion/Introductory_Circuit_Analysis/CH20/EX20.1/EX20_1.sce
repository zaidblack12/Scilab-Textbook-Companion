//Chapter 20, Example 20.1
clc
   //multiplication
function [r,s] = voltdivider(x1,x2,y1,y2)
    r=x1*x2
    s=y1+y2
endfunction

//Variable Declaration
r = 2                  //resistance in ohms
e1 = 10                //real value in volts
e1o = 0                //angle in degree
zt = 2                 //real value in ohms
zto = 0                //angle in degree
x1 = 10                //real value in ohms
x1o = 90                //angle in degree
fs = 5000               //frequency in hertz

//Calculation
i = e1/r                        //in ampere
[a,b]=voltdivider(i,x1,e1o,x1o)   //function of multiplication
[c,d]=voltdivider(i,x1,e1o,-x1o)   //function of multiplication
qs = x1/r                           //unit
bw = fs/qs                          //bandwidth in hertz
phpf=0.5*i*i*r                      //power in watt
//Results
printf("a. I = %d A < %d degree \n",i,e1o)
printf("   VL = %d V < %d degree \n",a,b)
printf("   Vc = %d V < %d degree \n",c,d)
printf("b. Qs = %d \n",qs)
printf("c. BW = %d Hz\n",bw)
printf("d. Phpf = %d W \n",phpf)
