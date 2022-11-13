//Chapter 12, Example 12.9
clc
//Variable Declaration
l = 1.2                   //L2 and L3 are equal
n = 2                     //number of turns
l4 = 1.8                  //inductance L4 in henry
l1 = 0.56                 //inductance L1 in henry

//Calculation
lt = l/n                  //total inductance in henry
lt11 = (lt*l4)/(lt+l4)    //total inductance in henry
lt2 = l1+lt11             //total inductance in henry
//Results
printf("LT = %.2f H",lt2)
