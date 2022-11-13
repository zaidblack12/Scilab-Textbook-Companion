//Chapter 8, Example 8.7
clc
//Variable Declaration
i1 = 4                  //current in ampere
i2 = 6                  //current in ampere
r1 = 8                  //resistance in ohm
r2 = 24                 //resistance in ohm
rl = 14                 //load resistance in ohm

//Calculation
is = i1+i2             //combining current in ampere
rs = (r1*r2)/(r1+r2)   //R1 and R2 are parallel
il = (rs*is)/(rs+rl)   //applying current divider rule

//Results
printf("Is = %d A \n",is)
printf("Rs = %d ohm \n",rs)
printf("IL = %d A",il)
