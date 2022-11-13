//Chapter 21, Example 21.4
clc
//Initialisation
p1=600              //power in watt
p2=400              //power in watt
p3=2000              //power in watt
vp=2400              //voltage in volt
v1=120              //voltage in volt
v2=240              //voltage in volt

//Calculation
pt=p1+p2+p3              //power in watt
Ip=pt/vp              //current in ampere
R=vp/Ip              //resistance in ohm
i1=p1/v1              //current in ampere
i2=p3/v2              //current in ampere
vl=1.73*vp              //voltage in volt
pt1=3*pt              //power in watt
a=vp/v2              //ratio

//Result
printf("(a) R = %d ohm \n",R)
printf("(b) I1 = %d A \n",i1)
printf("    I2 = %.2f A \n",i2)
printf("(c) Vl = %d V \n",vl)
printf("(d) Pt = %d kW \n",pt1/1000)
printf("(e) a = %d \n",a)
