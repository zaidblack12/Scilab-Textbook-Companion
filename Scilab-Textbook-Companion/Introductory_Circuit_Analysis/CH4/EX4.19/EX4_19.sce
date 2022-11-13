//Chapter 4, Example 4.19
clc
//Variable Declaration
w1 = 1200              //toaster in watt
w2 = 50                //bulbs in watt
w3 = 400               //washing machine in watt
w4 = 4800              //electric clothes in watt
c = 9                  //cost in unit/kWh
//Calculation
W = ((w1*0.5)+(6*w2*4)+(w3*0.75)+(w4*0.33))/1000      //energy in kWh
cost = W*c                  //in euro

//Results
printf("Cost = %.1f unit",cost)
