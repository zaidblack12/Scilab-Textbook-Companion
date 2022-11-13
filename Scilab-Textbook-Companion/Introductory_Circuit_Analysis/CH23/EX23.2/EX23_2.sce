//Chapter 23, Example 23.2
clc
//Variable Declaration
a1=0.004
a2=250000
a31=0.08
a32=240
a41=10**4
a42=10**-4
a5=10**4


//Calculation
a=log10(a1)
b=log10(a2)
c=log10(a31)+log10(a32)
d=log10(a41)-log10(a42)
e=log10(a5)

//Results
printf("(a) %.3f \n",a) 
printf("(b) %.3f \n",b)
printf("(c) %.3f \n",c)
printf("(d) %.1f \n",d)
printf("(e) %d \n",e)
