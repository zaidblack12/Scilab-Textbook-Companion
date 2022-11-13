//Chapter 5, Example 5.12
clc
//Variable Declaration
r1 = 2000                       //resistance1
r2 = 5000                       //resistance2
r3 = 8000                       //resistance3
e = 45                          //supply voltage


//Calculation
rt = r1+r2+r3             //Total resistance
r = r1+r2                 //resistance of R1 or R2
v = r*e/rt                       //volage
//Results
printf("V = %d V",v)
