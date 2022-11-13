//Chapter 3, Example 3.12
clc
//Variable Declaration
r =1000                //in ohm
p = 2500
t1 = 60                //in degree celsius
t2 = 20                //in degree celsius
a = 10^6

//Calculation
D = (r/a)*p*(t1-t2)
R = r+D                //resistance in ohm
//Results
printf("R = %d ohm",R)
