//Chapter 21, Example 21.8
clc
//Initialisation
L1=5           //in henry
L2=10           //in henry
L3=15           //in henry
M12=2           //in henry
M23=3           //in henry
M13=1           //in henry


//Calculation
Lt=L1+L2+L3+(2*M12)-(2*M23)-(2*M13)           //in henry


//Result
printf("Lt = %d H \n",Lt)
