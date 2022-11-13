//Chapter 25, Example 25.6
clc
//Initialisation
v=20                  //in voltage

//Calculation
v0=(4/%pi)*v
v1=v0
v2=(v0/3)
v3=(v0/5)
v4=(v0/7)
v5=(v0/9)
v6=(v0/11)
vrms=sqrt(((v1**2)+(v2**2)+(v3**2)+(v4**2)+(v5**2)+(v6**2))/2)
 
//Result
printf("(b) Vrmax = %.3f V",vrms)
