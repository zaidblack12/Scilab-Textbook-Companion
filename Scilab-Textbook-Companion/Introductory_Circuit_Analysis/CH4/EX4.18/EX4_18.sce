//Chapter 4, Example 4.18
clc
//Variable Declaration
p1 = 5                 //motor in horsepower
p2 = 746               //in W/hp
p3 = 2                 //in h
c = 9                  //in euro/kWh

//Calculation
Pt = p1*p2*p3           //power
W = Pt/1000             //in kWh
cost = W*c              //unit

//Results
printf("Cost = %.2f unit",cost)
