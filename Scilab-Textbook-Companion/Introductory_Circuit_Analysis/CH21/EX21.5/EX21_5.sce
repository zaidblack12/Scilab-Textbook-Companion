//Chapter 21, Example 21.5
clc
//Initialisation
E=120              //voltage in volt
rt1=512              //resistance in ohm
rt2=8                //resistance in ohm
R=8                //resistance in ohm
np=8               //no of turns
ns=1               //no of turns

//Calculation
is=E/(rt1+rt2)             //current in ampere
p=(is**2)*R             //power in watt
zp=((np/ns)**2)*R            //resistance in ohm
is2=E/(rt1+zp)             //current in ampere
p2=(is2**2)*zp           //power in watt


//Result
printf("(a) P = %.2f W \n",p)
printf("(b) Zp = %d ohm \n",zp)
printf("    P = %.3f W \n",p2)
