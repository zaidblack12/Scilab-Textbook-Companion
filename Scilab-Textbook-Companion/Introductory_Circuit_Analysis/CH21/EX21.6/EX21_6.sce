//Chapter 21, Example 21.6
clc
//Initialisation
vp=70.7              //voltage in volt
pp=10                //power in watt
zl=8                 //resistance in ohm
rt=500

//Calculation
pt=pp*4                //resulting power in watt
ip=pp/vp            //current in ampere
zp=vp/ip                 //resistance in ohm
zp1=sqrt(zp/zl)                 //resistance in ohm
vl=vp/zp1                 //voltage in volt
rt2=rt/2                 //resistance in ohm
rt3=rt/3                //resistance in ohm
rt4=rt/4                //resistance in ohm

//Result
printf("(a) Resulting power = %d W \n",pt)
printf("(b) Zp = %d ohm \n",zp)
printf("(c) Zp = %d : 1 \n",round(zp1))
printf("(d) VL = %d V \n",round(vl))
printf("(e) One Speaker = %d ohm \n",rt)
printf("    Two Speaker = %d ohm \n",rt2)
printf("    Three Speaker = %d ohm \n",rt3)
printf("    Four Speaker = %d ohm \n",rt4)
