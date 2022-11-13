//Chapter 1, Example 1.11
clc
//Variable Declaration
a = 41200         //in meter
b = 0.00956       //in Joule
c = 0.000768      //in sec
d1 = 8400         //in meter
d2 = 0.06         //in meter
e1 = 0.0003       //in sec

//Calculation
d = d1/d2         //in meter
e = e1^4       //in sec

//Results 
printf("(a) %.1f km \n",a/1000)
printf("(b) %.2f mJ \n",b*1000)
printf("(c) %d us \n",c*10**6)
printf("(d) %d km \n",d/1000)
printf("(e) %.4f ps",e*10**12)
