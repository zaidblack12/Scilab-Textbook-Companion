//Chapter 22, Example 22.4
clc
   //multiplication
function [r,s] = voltdivider(x1,x2,y1,y2)
    r=x1*x2
    s=y1+y2
endfunction
//Variable Declaration
ian = 2              //in ampere
iano = 0           //angle in degree
ibn = 2              //in ampere
ibno = -120           //angle in degree
icn = 2              //in ampere
icno = 120           //angle in degree
zan = 10                //in ohm
zano = -53.13           //angle in degree
//Calculation
[a,b]=voltdivider(ian,zan,iano,zano)    //function of multiplication
[c,d]=voltdivider(ibn,zan,ibno,zano)    //function of multiplication
[e,f]=voltdivider(icn,zan,icno,zano)    //function of multiplication
el = sqrt(3)*a                //in volt
//Results
printf("a. Van = %d V < %.2f degree \n",a,b)
printf("   Vbn = %d V < %.2f degree \n",c,d)
printf("   Vcn = %d V < %.2f degree \n",e,f)
printf("b. El = %.1f V ",el)
