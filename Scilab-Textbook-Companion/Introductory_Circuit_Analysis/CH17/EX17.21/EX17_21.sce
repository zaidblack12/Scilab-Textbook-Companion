//Chapter 17, Example 17.21
clc
//Variable Declaration
zt = complex(1,2)
zd = complex(3,6)

//Calculation
a= real(zd)/3
b= imag(zd)/3
c = a*3
d = b*3
e = c/2
f = d/2
g = (e*2)/3
h = (f*2)/3
//Results
printf("Zy = %d ohm + j %d ohm \n",a,b)
printf("Zt = %d ohm + j %d ohm \n",real(zt),imag(zt))
printf("Zdel = %d ohm + j %d ohm \n",c,d)
printf("Z1 = %.1f ohm + j %d ohm \n",e,f)
printf("Zt = %d ohm + j %d ohm \n",g,h)
