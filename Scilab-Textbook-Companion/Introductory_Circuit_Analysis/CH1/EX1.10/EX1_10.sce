//Chapter 1, Example 1.10
clc
//Variable Declaration
a = 1000000     //in ohms
b = 1000000     //in meters
c = 0.0001      //in second
d = 0.000001    //in farad

//Results 
printf("(a) %d x 10^6 ohms = %d megaohm \n",a/10**6,a/10**6)
printf("(b) %d x 10^3 meters = %d kilometers \n",b/10**4,b/10**4)
printf("(c) %.1f x 10-3 second = %.1f millisecond \n",c*1000,c*10**3)
printf("(d) %d x 10-6 farad = %d microfarad",d*10**6,d*10**6)
