//Chapter 7, Example 7.1
clc
//Variable Declaration
rb = 12000                   //resistance in ohm
rc = 6000                    //resistance in ohm
e = 54                       //voltage
ra = 2000                    //resistance in ohm
//Calculation
rbc = (rb*rc)/(rb+rc)        //RB and RC are parallel
rt = ra+rbc                  //the equivalent resistance in ohm
is = e/rt                    //source current Is in ampere
ia = is
ib = (rc*is)/(rb+rc)         //applying current divider rule
ic = (rb*is)/(rb+rc)         //applying current divider rule
ic1 = is-ib                  //applying KCL


//Results
printf("Rbc = %d kohm \n",rbc/10^3)
printf("Rt = %d kohm \n",rt/10^3)
printf("Ia = %d mA \n",ia*1000)
printf("Ib = %.f mA \n",ib*1000)
printf("Ic = %.f mA \n",ic*1000)
printf("Ic = %.f mA \n",ic1*1000)
