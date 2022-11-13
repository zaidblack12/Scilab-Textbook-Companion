//Chapter 8, Example 8.6
clc
//Variable Declaration
i1 = 6                   //current in ampere figs. 8.11
i2 = 10                  //current in ampere figs. 8.11
r1 = 3                   //resistance in ohms figs. 8.11
r2 = 6                   //resistance in ohms figs. 8.11
i3 = 7                   //current in ampere figs. 8.12
i4 = 3                   //current in ampere figs. 8.12
i5 = 4                   //current in ampere figs. 8.12
r3 = 4                   //resistance in ohms figs. 8.12


//Calculation
is = i2-i1                    //current in ampere
rs = (r1*r2)/(r1+r2)       //R1 and R2 are parallel
is1 = i3+i5-i4                  //current in ampere
rs1 = r3                   //in ohms

//Results
printf("Is = %d A \n",is)
printf("Rs = %d ohm \n",rs)
printf("Is = %d A \n",is1)
printf("Rs = %d ohm \n",rs1)
