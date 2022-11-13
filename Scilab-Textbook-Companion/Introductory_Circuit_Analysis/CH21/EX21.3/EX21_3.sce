//Chapter 21, Example 21.3
clc
//Initialisation
np=40                     //no of turns
ns=5                     //no of turns
vl=200                    //voltage
zl=2*10**3                //resistance in ohm
is=0.1                    //current in ampere

//Calculation
Ip=(ns/np)*is             //current in amp
vg=(np/ns)*vl             //voltage in volt
a=np/ns                  //turn ratio
zp=(a**2)*(zl)             //in ohm


//Result
printf("(a) Ip = %.1f mA \n",Ip*10**3)
printf("    Vg = %d V \n",vg)
printf("(b) Zp = %d Kohm",zp/10**3)
