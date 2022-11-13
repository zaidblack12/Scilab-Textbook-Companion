//Chapter 7, Example 7.2
clc
//Variable Declaration
r1 = 4                      //resistance in ohm
r2 = 4                      //resistance in ohm
r3 = 4                      //resistance in ohm
r4 = 0.5                    //resistance in ohm
r5 = 1.5                    //resistance in ohm
e = 10                      //voltage
is = 2                      //current through R1 in ampere

//Calculation
ra = r1                     //RA is R1 in ohms
rb = (r2*r3)/(r2+r3)        //RB is parallel combination of R2 and R3 in ohms
rc = r4+r5                  //RC is equivalent resistor of R4 and R5 in ohms
rbc = (rb*rc)/(rb+rc)       //parallel combination of RB and RC in ohms
rt = ra+rbc                     //resistance in ohm
ia = is                     //same current in ampere
ib = ia/2                  //current in ampere
ic = ib                  //current in ampere
ir2 = ib/2                  //current in ampere
ir3 = ir2                  //current in ampere
va = ia*ra                  //voltage
vb = ib*rb                 //voltage
vc = vb                 //voltage
v = e-va-vb                //applying KVL

//Results
printf("Rt = %d ohm \n",rt)
printf("Is = %d A \n",is)
printf("Ia = %d A \n",ia)
printf("Ib = %d A \n",ib)
printf("Ir2 = Ir3 = %.1f A \n",ir2)
printf("Va = %d V \n",va)
printf("Vb = %d V \n",vb)
printf("Vc = %d V \n",vc)
