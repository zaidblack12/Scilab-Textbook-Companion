//Chapter 25, Example 25.2
clc
//Initialisation
A0=20
A10=0
A11=5*10**-3
A12=0
A13=0
A20=8
A21=0
B1=12
B2=0

//Calculation
v=A0                    //from graph 25.12
i=A10+A11+A12+A13         //fourier series
v2=A20+A21        //fourier series
B=B1+B2        //fourier series

//Result
printf("(a) v = %d \n",v)
printf("(b) i = %d X 10^-3 sin wt \n",i*10**3)
printf("(c) v = %d + %d cos wt",v2,B)
