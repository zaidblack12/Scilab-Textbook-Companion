//Chapter 7, Example 7.10
clc
//Variable Declaration
e1 = 20                 //emf in voltage
e2 = 5                  //emf in voltage
e3 = 8                  //emf in voltage


//Calculation
v1 = e1-e3              //voltage
v2 = e2-v1              //voltage
v3 = e3-v2              //voltage

//Results
printf("V1 = %d V \n",v1)
printf("V2 = %d V \n",v2)
printf("V3 = %d V \n",v3)
