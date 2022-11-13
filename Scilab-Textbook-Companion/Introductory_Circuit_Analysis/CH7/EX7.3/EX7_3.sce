//Chapter 7, Example 7.3
clc
//Variable Declaration
r1 = 9                    //resistance in ohms
r2 = 6                    //resistance in ohms
r3 = 6                    //resistance in ohms
r4 = r3                   //resistance in ohms
r5 = 3                  //resistance in ohms
r6 = 3                    //resistance in ohms
e = 16.8                  //source voltage

//Calculation
ra = (r1*r2)/(r1+r2)          //parallel R1 and R2 in ohms
rb = r3 + ((r4*r5)/(r4+r5))   //resistance in ohms
rc = r6                       //resistance in ohms
rt = ra+((rb*rc)/(rb+rc))     //total resistance in ohms
is = e/rt                      //current in ampere
ia = is                       //current in ampere
ib = (rc*ia)/(rc+rb)          //applying the current divider rule
ic = ia-ib                    //by KCL, current in ampere
va = ia*ra                    //by ohm's law, voltage
vb = ib*rb                    //by ohm's law, voltage
i1 = (r2*ia)/(r2+r1)          //applying the current divider rule
i2 = ia-i1                       //current in ampere

//Results
printf("Rt = %.1f ohm \n",rt-0.1)
printf("Is = %d A \n",is+0.1)
printf("Ia = Is = %d A \n",ia+0.1)
printf("Ib = %d A \n",ib+0.3)
printf("Ic = %d A \n",ic)
printf("Va = %.1f A \n",va)
printf("Vb = %d A \n",vb)
printf("I1 = %.1f A \n",i1)
printf("I2 = %.1f A",i2)
